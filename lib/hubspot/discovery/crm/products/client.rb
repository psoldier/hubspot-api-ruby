require_rel '../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Products
        class Client
          def self.api_classes
            %i[
              associations
              basic
              batch
              search
            ].freeze
          end
  
          include Hubspot::Discovery::BaseModuleClient
        end
      end
    end
  end
end