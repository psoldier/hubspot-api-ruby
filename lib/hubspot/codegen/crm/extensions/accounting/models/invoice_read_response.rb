=begin
#Accounting Extension

#These APIs allow you to interact with HubSpot's Accounting Extension. It allows you to: * Specify the URLs that HubSpot will use when making webhook requests to your external accounting system. * Respond to webhook calls made to your external accounting system by HubSpot 

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module Hubspot
  module Crm
    module Extensions
      module Accounting
        class InvoiceReadResponse
          # The invoice number. Note that this is _not_ the ID of the invoice, but the number that the billed customer will see.
          attr_accessor :external_invoice_number

          # The total amount that this invoice is for.
          attr_accessor :total_amount_billed

          # The remaining balance due for the invoice.
          attr_accessor :balance_due

          # The ISO 4217 currency code that represents the currency of the invoice.
          attr_accessor :currency_code

          # The due date of the invoice
          attr_accessor :due_date

          # The id of the customer in the external accounting system that the invoice was sent to.
          attr_accessor :external_recipient_id

          # The datetime that that invoice was sent to the customer.
          attr_accessor :received_by_recipient_date

          # The datetime that the invoice was created in the external accounting system.
          attr_accessor :external_create_date_time

          # Indicated is the invoice has been voided or not.
          attr_accessor :is_voided

          # The datetime that the invoice was created in HubSpot.
          attr_accessor :created_at

          # The datetime that the invoice was last updated in HubSpot.
          attr_accessor :updated_at

          attr_accessor :archived_at

          attr_accessor :archived

          # The id of the account in the external accounting system that this invoice is related to.
          attr_accessor :external_account_id

          # The status of the invoice
          attr_accessor :invoice_status

          # The id of this invoice in the external accounting system.
          attr_accessor :id

          class EnumAttributeValidator
            attr_reader :datatype
            attr_reader :allowable_values

            def initialize(datatype, allowable_values)
              @allowable_values = allowable_values.map do |value|
                case datatype.to_s
                when /Integer/i
                  value.to_i
                when /Float/i
                  value.to_f
                else
                  value
                end
              end
            end

            def valid?(value)
              !value || allowable_values.include?(value)
            end
          end

          # Attribute mapping from ruby-style variable name to JSON key.
          def self.attribute_map
            {
              :'external_invoice_number' => :'externalInvoiceNumber',
              :'total_amount_billed' => :'totalAmountBilled',
              :'balance_due' => :'balanceDue',
              :'currency_code' => :'currencyCode',
              :'due_date' => :'dueDate',
              :'external_recipient_id' => :'externalRecipientId',
              :'received_by_recipient_date' => :'receivedByRecipientDate',
              :'external_create_date_time' => :'externalCreateDateTime',
              :'is_voided' => :'isVoided',
              :'created_at' => :'createdAt',
              :'updated_at' => :'updatedAt',
              :'archived_at' => :'archivedAt',
              :'archived' => :'archived',
              :'external_account_id' => :'externalAccountId',
              :'invoice_status' => :'invoiceStatus',
              :'id' => :'id'
            }
          end

          # Returns all the JSON keys this model knows about
          def self.acceptable_attributes
            attribute_map.values
          end

          # Attribute type mapping.
          def self.openapi_types
            {
              :'external_invoice_number' => :'String',
              :'total_amount_billed' => :'Float',
              :'balance_due' => :'Float',
              :'currency_code' => :'String',
              :'due_date' => :'Date',
              :'external_recipient_id' => :'String',
              :'received_by_recipient_date' => :'Integer',
              :'external_create_date_time' => :'Integer',
              :'is_voided' => :'Boolean',
              :'created_at' => :'Time',
              :'updated_at' => :'Time',
              :'archived_at' => :'Time',
              :'archived' => :'Boolean',
              :'external_account_id' => :'String',
              :'invoice_status' => :'String',
              :'id' => :'String'
            }
          end

          # List of attributes with nullable: true
          def self.openapi_nullable
            Set.new([
            ])
          end

          # Initializes the object
          # @param [Hash] attributes Model attributes in the form of hash
          def initialize(attributes = {})
            if (!attributes.is_a?(Hash))
              fail ArgumentError, "The input argument (attributes) must be a hash in `Hubspot::Crm::Extensions::Accounting::InvoiceReadResponse` initialize method"
            end

            # check to see if the attribute exists and convert string to symbol for hash key
            attributes = attributes.each_with_object({}) { |(k, v), h|
              if (!self.class.attribute_map.key?(k.to_sym))
                fail ArgumentError, "`#{k}` is not a valid attribute in `Hubspot::Crm::Extensions::Accounting::InvoiceReadResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
              end
              h[k.to_sym] = v
            }

            if attributes.key?(:'external_invoice_number')
              self.external_invoice_number = attributes[:'external_invoice_number']
            end

            if attributes.key?(:'total_amount_billed')
              self.total_amount_billed = attributes[:'total_amount_billed']
            end

            if attributes.key?(:'balance_due')
              self.balance_due = attributes[:'balance_due']
            end

            if attributes.key?(:'currency_code')
              self.currency_code = attributes[:'currency_code']
            end

            if attributes.key?(:'due_date')
              self.due_date = attributes[:'due_date']
            end

            if attributes.key?(:'external_recipient_id')
              self.external_recipient_id = attributes[:'external_recipient_id']
            end

            if attributes.key?(:'received_by_recipient_date')
              self.received_by_recipient_date = attributes[:'received_by_recipient_date']
            end

            if attributes.key?(:'external_create_date_time')
              self.external_create_date_time = attributes[:'external_create_date_time']
            end

            if attributes.key?(:'is_voided')
              self.is_voided = attributes[:'is_voided']
            end

            if attributes.key?(:'created_at')
              self.created_at = attributes[:'created_at']
            end

            if attributes.key?(:'updated_at')
              self.updated_at = attributes[:'updated_at']
            end

            if attributes.key?(:'archived_at')
              self.archived_at = attributes[:'archived_at']
            end

            if attributes.key?(:'archived')
              self.archived = attributes[:'archived']
            end

            if attributes.key?(:'external_account_id')
              self.external_account_id = attributes[:'external_account_id']
            end

            if attributes.key?(:'invoice_status')
              self.invoice_status = attributes[:'invoice_status']
            end

            if attributes.key?(:'id')
              self.id = attributes[:'id']
            end
          end

          # Show invalid properties with the reasons. Usually used together with valid?
          # @return Array for valid properties with the reasons
          def list_invalid_properties
            invalid_properties = Array.new
            if @total_amount_billed.nil?
              invalid_properties.push('invalid value for "total_amount_billed", total_amount_billed cannot be nil.')
            end

            if @balance_due.nil?
              invalid_properties.push('invalid value for "balance_due", balance_due cannot be nil.')
            end

            if @currency_code.nil?
              invalid_properties.push('invalid value for "currency_code", currency_code cannot be nil.')
            end

            if @due_date.nil?
              invalid_properties.push('invalid value for "due_date", due_date cannot be nil.')
            end

            if @external_recipient_id.nil?
              invalid_properties.push('invalid value for "external_recipient_id", external_recipient_id cannot be nil.')
            end

            if @is_voided.nil?
              invalid_properties.push('invalid value for "is_voided", is_voided cannot be nil.')
            end

            if @created_at.nil?
              invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
            end

            if @updated_at.nil?
              invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
            end

            if @archived.nil?
              invalid_properties.push('invalid value for "archived", archived cannot be nil.')
            end

            if @external_account_id.nil?
              invalid_properties.push('invalid value for "external_account_id", external_account_id cannot be nil.')
            end

            if @invoice_status.nil?
              invalid_properties.push('invalid value for "invoice_status", invoice_status cannot be nil.')
            end

            if @id.nil?
              invalid_properties.push('invalid value for "id", id cannot be nil.')
            end

            invalid_properties
          end

          # Check to see if the all the properties in the model are valid
          # @return true if the model is valid
          def valid?
            return false if @total_amount_billed.nil?
            return false if @balance_due.nil?
            return false if @currency_code.nil?
            return false if @due_date.nil?
            return false if @external_recipient_id.nil?
            return false if @is_voided.nil?
            return false if @created_at.nil?
            return false if @updated_at.nil?
            return false if @archived.nil?
            return false if @external_account_id.nil?
            return false if @invoice_status.nil?
            invoice_status_validator = EnumAttributeValidator.new('String', ["CREATED", "SENT", "PAID", "CLOSED", "OVERDUE", "VOIDED", "NONE", "UNPAID"])
            return false unless invoice_status_validator.valid?(@invoice_status)
            return false if @id.nil?
            true
          end

          # Custom attribute writer method checking allowed values (enum).
          # @param [Object] invoice_status Object to be assigned
          def invoice_status=(invoice_status)
            validator = EnumAttributeValidator.new('String', ["CREATED", "SENT", "PAID", "CLOSED", "OVERDUE", "VOIDED", "NONE", "UNPAID"])
            unless validator.valid?(invoice_status)
              fail ArgumentError, "invalid value for \"invoice_status\", must be one of #{validator.allowable_values}."
            end
            @invoice_status = invoice_status
          end

          # Checks equality by comparing each attribute.
          # @param [Object] Object to be compared
          def ==(o)
            return true if self.equal?(o)
            self.class == o.class &&
                external_invoice_number == o.external_invoice_number &&
                total_amount_billed == o.total_amount_billed &&
                balance_due == o.balance_due &&
                currency_code == o.currency_code &&
                due_date == o.due_date &&
                external_recipient_id == o.external_recipient_id &&
                received_by_recipient_date == o.received_by_recipient_date &&
                external_create_date_time == o.external_create_date_time &&
                is_voided == o.is_voided &&
                created_at == o.created_at &&
                updated_at == o.updated_at &&
                archived_at == o.archived_at &&
                archived == o.archived &&
                external_account_id == o.external_account_id &&
                invoice_status == o.invoice_status &&
                id == o.id
          end

          # @see the `==` method
          # @param [Object] Object to be compared
          def eql?(o)
            self == o
          end

          # Calculates hash code according to all attributes.
          # @return [Integer] Hash code
          def hash
            [external_invoice_number, total_amount_billed, balance_due, currency_code, due_date, external_recipient_id, received_by_recipient_date, external_create_date_time, is_voided, created_at, updated_at, archived_at, archived, external_account_id, invoice_status, id].hash
          end

          # Builds the object from hash
          # @param [Hash] attributes Model attributes in the form of hash
          # @return [Object] Returns the model itself
          def self.build_from_hash(attributes)
            new.build_from_hash(attributes)
          end

          # Builds the object from hash
          # @param [Hash] attributes Model attributes in the form of hash
          # @return [Object] Returns the model itself
          def build_from_hash(attributes)
            return nil unless attributes.is_a?(Hash)
            attributes = attributes.transform_keys(&:to_sym)
            self.class.openapi_types.each_pair do |key, type|
              if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
                self.send("#{key}=", nil)
              elsif type =~ /\AArray<(.*)>/i
                # check to ensure the input is an array given that the attribute
                # is documented as an array but the input is not
                if attributes[self.class.attribute_map[key]].is_a?(Array)
                  self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
                end
              elsif !attributes[self.class.attribute_map[key]].nil?
                self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
              end
            end

            self
          end

          # Deserializes the data based on type
          # @param string type Data type
          # @param string value Value to be deserialized
          # @return [Object] Deserialized data
          def _deserialize(type, value)
            case type.to_sym
            when :Time
              Time.parse(value)
            when :Date
              Date.parse(value)
            when :String
              value.to_s
            when :Integer
              value.to_i
            when :Float
              value.to_f
            when :Boolean
              if value.to_s =~ /\A(true|t|yes|y|1)\z/i
                true
              else
                false
              end
            when :Object
              # generic object (usually a Hash), return directly
              value
            when /\AArray<(?<inner_type>.+)>\z/
              inner_type = Regexp.last_match[:inner_type]
              value.map { |v| _deserialize(inner_type, v) }
            when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
              k_type = Regexp.last_match[:k_type]
              v_type = Regexp.last_match[:v_type]
              {}.tap do |hash|
                value.each do |k, v|
                  hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
                end
              end
            else # model
              # models (e.g. Pet) or oneOf
              klass = Hubspot::Crm::Extensions::Accounting.const_get(type)
              klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
            end
          end

          # Returns the string representation of the object
          # @return [String] String presentation of the object
          def to_s
            to_hash.to_s
          end

          # to_body is an alias to to_hash (backward compatibility)
          # @return [Hash] Returns the object in the form of hash
          def to_body
            to_hash
          end

          # Returns the object in the form of hash
          # @return [Hash] Returns the object in the form of hash
          def to_hash
            hash = {}
            self.class.attribute_map.each_pair do |attr, param|
              value = self.send(attr)
              if value.nil?
                is_nullable = self.class.openapi_nullable.include?(attr)
                next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
              end

              hash[param] = _to_hash(value)
            end
            hash
          end

          # Outputs non-array value in the form of hash
          # For object, use to_hash. Otherwise, just return the value
          # @param [Object] value Any valid value
          # @return [Hash] Returns the value in the form of hash
          def _to_hash(value)
            if value.is_a?(Array)
              value.compact.map { |v| _to_hash(v) }
            elsif value.is_a?(Hash)
              {}.tap do |hash|
                value.each { |k, v| hash[k] = _to_hash(v) }
              end
            elsif value.respond_to? :to_hash
              value.to_hash
            else
              value
            end
          end

        end

      end
    end
  end
end
