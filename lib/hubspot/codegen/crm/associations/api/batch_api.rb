=begin
#Associations

#Associations define the relationships between objects in HubSpot. These endpoints allow you to create, read, and remove associations.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'cgi'

module Hubspot
  module Client
    module Crm
      module Associations
        module Api
          class BatchApi
            attr_accessor :api_client

            def initialize(api_client = ApiClient.default)
              @api_client = api_client
            end
            # Archive a batch of associations
            # Remove the associations between all pairs of objects identified in the request body.
            # @param from_object_type [String] 
            # @param to_object_type [String] 
            # @param [Hash] opts the optional parameters
            # @option opts [BatchInputPublicAssociation] :batch_input_public_association 
            # @return [nil]
            def archive_batch(from_object_type, to_object_type, opts = {})
              archive_batch_with_http_info(from_object_type, to_object_type, opts)
              nil
            end

            # Archive a batch of associations
            # Remove the associations between all pairs of objects identified in the request body.
            # @param from_object_type [String] 
            # @param to_object_type [String] 
            # @param [Hash] opts the optional parameters
            # @option opts [BatchInputPublicAssociation] :batch_input_public_association 
            # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
            def archive_batch_with_http_info(from_object_type, to_object_type, opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: BatchApi.archive_batch ...'
              end
              # verify the required parameter 'from_object_type' is set
              if @api_client.config.client_side_validation && from_object_type.nil?
                fail ArgumentError, "Missing the required parameter 'from_object_type' when calling BatchApi.archive_batch"
              end
              # verify the required parameter 'to_object_type' is set
              if @api_client.config.client_side_validation && to_object_type.nil?
                fail ArgumentError, "Missing the required parameter 'to_object_type' when calling BatchApi.archive_batch"
              end
              # resource path
              local_var_path = '/{fromObjectType}/{toObjectType}/batch/archive'.sub('{' + 'fromObjectType' + '}', CGI.escape(from_object_type.to_s)).sub('{' + 'toObjectType' + '}', CGI.escape(to_object_type.to_s))

              # query parameters
              query_params = opts[:query_params] || {}

              # header parameters
              header_params = opts[:header_params] || {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['*/*'])
              # HTTP header 'Content-Type'
              header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

              # form parameters
              form_params = opts[:form_params] || {}

              # http body (model)
              post_body = opts[:body] || @api_client.object_to_http_body(opts[:'batch_input_public_association']) 

              # return_type
              return_type = opts[:return_type] 

              # auth_names
              auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

              new_options = opts.merge(
                :header_params => header_params,
                :query_params => query_params,
                :form_params => form_params,
                :body => post_body,
                :auth_names => auth_names,
                :return_type => return_type
              )

              data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: BatchApi#archive_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end

            # Create a batch of associations
            # Associate all pairs of objects identified in the request body.
            # @param from_object_type [String] 
            # @param to_object_type [String] 
            # @param [Hash] opts the optional parameters
            # @option opts [BatchInputPublicAssociation] :batch_input_public_association 
            # @return [BatchResponsePublicAssociation]
            def create_batch(from_object_type, to_object_type, opts = {})
              data, _status_code, _headers = create_batch_with_http_info(from_object_type, to_object_type, opts)
              data
            end

            # Create a batch of associations
            # Associate all pairs of objects identified in the request body.
            # @param from_object_type [String] 
            # @param to_object_type [String] 
            # @param [Hash] opts the optional parameters
            # @option opts [BatchInputPublicAssociation] :batch_input_public_association 
            # @return [Array<(BatchResponsePublicAssociation, Integer, Hash)>] BatchResponsePublicAssociation data, response status code and response headers
            def create_batch_with_http_info(from_object_type, to_object_type, opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: BatchApi.create_batch ...'
              end
              # verify the required parameter 'from_object_type' is set
              if @api_client.config.client_side_validation && from_object_type.nil?
                fail ArgumentError, "Missing the required parameter 'from_object_type' when calling BatchApi.create_batch"
              end
              # verify the required parameter 'to_object_type' is set
              if @api_client.config.client_side_validation && to_object_type.nil?
                fail ArgumentError, "Missing the required parameter 'to_object_type' when calling BatchApi.create_batch"
              end
              # resource path
              local_var_path = '/{fromObjectType}/{toObjectType}/batch/create'.sub('{' + 'fromObjectType' + '}', CGI.escape(from_object_type.to_s)).sub('{' + 'toObjectType' + '}', CGI.escape(to_object_type.to_s))

              # query parameters
              query_params = opts[:query_params] || {}

              # header parameters
              header_params = opts[:header_params] || {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
              # HTTP header 'Content-Type'
              header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

              # form parameters
              form_params = opts[:form_params] || {}

              # http body (model)
              post_body = opts[:body] || @api_client.object_to_http_body(opts[:'batch_input_public_association']) 

              # return_type
              return_type = opts[:return_type] || 'BatchResponsePublicAssociation' 

              # auth_names
              auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

              new_options = opts.merge(
                :header_params => header_params,
                :query_params => query_params,
                :form_params => form_params,
                :body => post_body,
                :auth_names => auth_names,
                :return_type => return_type
              )

              data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: BatchApi#create_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end

            # Read a batch of associations
            # Get the IDs of all `{toObjectType}` objects associated with those specified in the request body.
            # @param from_object_type [String] 
            # @param to_object_type [String] 
            # @param [Hash] opts the optional parameters
            # @option opts [BatchInputPublicObjectId] :batch_input_public_object_id 
            # @return [BatchResponsePublicAssociationMulti]
            def read_batch(from_object_type, to_object_type, opts = {})
              data, _status_code, _headers = read_batch_with_http_info(from_object_type, to_object_type, opts)
              data
            end

            # Read a batch of associations
            # Get the IDs of all &#x60;{toObjectType}&#x60; objects associated with those specified in the request body.
            # @param from_object_type [String] 
            # @param to_object_type [String] 
            # @param [Hash] opts the optional parameters
            # @option opts [BatchInputPublicObjectId] :batch_input_public_object_id 
            # @return [Array<(BatchResponsePublicAssociationMulti, Integer, Hash)>] BatchResponsePublicAssociationMulti data, response status code and response headers
            def read_batch_with_http_info(from_object_type, to_object_type, opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: BatchApi.read_batch ...'
              end
              # verify the required parameter 'from_object_type' is set
              if @api_client.config.client_side_validation && from_object_type.nil?
                fail ArgumentError, "Missing the required parameter 'from_object_type' when calling BatchApi.read_batch"
              end
              # verify the required parameter 'to_object_type' is set
              if @api_client.config.client_side_validation && to_object_type.nil?
                fail ArgumentError, "Missing the required parameter 'to_object_type' when calling BatchApi.read_batch"
              end
              # resource path
              local_var_path = '/{fromObjectType}/{toObjectType}/batch/read'.sub('{' + 'fromObjectType' + '}', CGI.escape(from_object_type.to_s)).sub('{' + 'toObjectType' + '}', CGI.escape(to_object_type.to_s))

              # query parameters
              query_params = opts[:query_params] || {}

              # header parameters
              header_params = opts[:header_params] || {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
              # HTTP header 'Content-Type'
              header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

              # form parameters
              form_params = opts[:form_params] || {}

              # http body (model)
              post_body = opts[:body] || @api_client.object_to_http_body(opts[:'batch_input_public_object_id']) 

              # return_type
              return_type = opts[:return_type] || 'BatchResponsePublicAssociationMulti' 

              # auth_names
              auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

              new_options = opts.merge(
                :header_params => header_params,
                :query_params => query_params,
                :form_params => form_params,
                :body => post_body,
                :auth_names => auth_names,
                :return_type => return_type
              )

              data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: BatchApi#read_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end
          end
        end
      end
    end
  end
end