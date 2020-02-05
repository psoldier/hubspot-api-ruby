module Services
  module Hubspot
    module Contacts
      class GetBatch
        def initialize(ids)
          @ids = ids
        end

        def call
          contact_id_objects = ::Hubspot::Client::Crm::Contacts::Models::BatchReadInputSimplePublicObjectId.new(
            inputs: @ids.map { |id| ::Hubspot::Client::Crm::Contacts::Models::SimplePublicObjectId.new(id: id) }
          )
          batch = ::Hubspot::Client::Crm::Contacts::Api::BatchApi.new.read_batch(
            body: contact_id_objects,
            auth_names: 'oauth2'
          ).results

          contact_names = names(batch)
          @ids.map do |id|
            {
              id: id,
              events: Event.where(object_id: id).order(:occured_at),
              name: contact_names[id]
            }
          end
        end

        private

        def names(contact_objects)
          contact_objects ||= []
          contact_objects.each_with_object({}) do |contact, hash|
            hash[contact.id.to_i] = [contact.properties['firstname'], contact.properties['lastname']].join(' ')
          end
        end
      end
    end
  end
end