=begin
wallee API: 2.2.1

The wallee API allows an easy interaction with the wallee web service.



Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require "uri"

module Wallee
  class DeliveryIndicationService
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Count
    # Counts the number of items in the database as restricted by the given filter.
    # @param space_id 
    # @param [Hash] opts the optional parameters
    # @option opts [EntityQueryFilter] :filter The filter which restricts the entities which are used to calculate the count.
    # @return [Integer]
    def count(space_id, opts = {})
      data, _status_code, _headers = count_with_http_info(space_id, opts)
      return data
    end

    # Count
    # Counts the number of items in the database as restricted by the given filter.
    # @param space_id 
    # @param [Hash] opts the optional parameters
    # @option opts [EntityQueryFilter] :filter The filter which restricts the entities which are used to calculate the count.
    # @return [Array<(Integer, Fixnum, Hash)>] Integer data, response status code and response headers
    def count_with_http_info(space_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DeliveryIndicationService.count ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling DeliveryIndicationService.count" if space_id.nil?
      # resource path
      local_var_path = "/delivery-indication/count".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json;charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'filter'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Integer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeliveryIndicationService#count\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # markAsNotSuitable
    # This operation marks the delivery indication as not suitable.
    # @param space_id 
    # @param delivery_indication_id The delivery indication id which should be marked as not suitable.
    # @param [Hash] opts the optional parameters
    # @return [DeliveryIndication]
    def mark_as_not_suitable(space_id, delivery_indication_id, opts = {})
      data, _status_code, _headers = mark_as_not_suitable_with_http_info(space_id, delivery_indication_id, opts)
      return data
    end

    # markAsNotSuitable
    # This operation marks the delivery indication as not suitable.
    # @param space_id 
    # @param delivery_indication_id The delivery indication id which should be marked as not suitable.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeliveryIndication, Fixnum, Hash)>] DeliveryIndication data, response status code and response headers
    def mark_as_not_suitable_with_http_info(space_id, delivery_indication_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DeliveryIndicationService.mark_as_not_suitable ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling DeliveryIndicationService.mark_as_not_suitable" if space_id.nil?
      # verify the required parameter 'delivery_indication_id' is set
      fail ArgumentError, "Missing the required parameter 'delivery_indication_id' when calling DeliveryIndicationService.mark_as_not_suitable" if delivery_indication_id.nil?
      # resource path
      local_var_path = "/delivery-indication/markAsNotSuitable".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(delivery_indication_id)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DeliveryIndication')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeliveryIndicationService#mark_as_not_suitable\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # markAsSuitable
    # This operation marks the delivery indication as suitable.
    # @param space_id 
    # @param delivery_indication_id The delivery indication id which should be marked as suitable.
    # @param [Hash] opts the optional parameters
    # @return [DeliveryIndication]
    def mark_as_suitable(space_id, delivery_indication_id, opts = {})
      data, _status_code, _headers = mark_as_suitable_with_http_info(space_id, delivery_indication_id, opts)
      return data
    end

    # markAsSuitable
    # This operation marks the delivery indication as suitable.
    # @param space_id 
    # @param delivery_indication_id The delivery indication id which should be marked as suitable.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeliveryIndication, Fixnum, Hash)>] DeliveryIndication data, response status code and response headers
    def mark_as_suitable_with_http_info(space_id, delivery_indication_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DeliveryIndicationService.mark_as_suitable ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling DeliveryIndicationService.mark_as_suitable" if space_id.nil?
      # verify the required parameter 'delivery_indication_id' is set
      fail ArgumentError, "Missing the required parameter 'delivery_indication_id' when calling DeliveryIndicationService.mark_as_suitable" if delivery_indication_id.nil?
      # resource path
      local_var_path = "/delivery-indication/markAsSuitable".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(delivery_indication_id)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DeliveryIndication')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeliveryIndicationService#mark_as_suitable\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read
    # Reads the entity with the given 'id' and returns it.
    # @param space_id 
    # @param id The id of the delivery indication which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [DeliveryIndication]
    def read(space_id, id, opts = {})
      data, _status_code, _headers = read_with_http_info(space_id, id, opts)
      return data
    end

    # Read
    # Reads the entity with the given &#39;id&#39; and returns it.
    # @param space_id 
    # @param id The id of the delivery indication which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeliveryIndication, Fixnum, Hash)>] DeliveryIndication data, response status code and response headers
    def read_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DeliveryIndicationService.read ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling DeliveryIndicationService.read" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling DeliveryIndicationService.read" if id.nil?
      # resource path
      local_var_path = "/delivery-indication/read".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'id'] = id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['*/*']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DeliveryIndication')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeliveryIndicationService#read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search
    # Searches for the entities as specified by the given query.
    # @param space_id 
    # @param query The query restricts the delivery indications which are returned by the search.
    # @param [Hash] opts the optional parameters
    # @return [Array<DeliveryIndication>]
    def search(space_id, query, opts = {})
      data, _status_code, _headers = search_with_http_info(space_id, query, opts)
      return data
    end

    # Search
    # Searches for the entities as specified by the given query.
    # @param space_id 
    # @param query The query restricts the delivery indications which are returned by the search.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<DeliveryIndication>, Fixnum, Hash)>] Array<DeliveryIndication> data, response status code and response headers
    def search_with_http_info(space_id, query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DeliveryIndicationService.search ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling DeliveryIndicationService.search" if space_id.nil?
      # verify the required parameter 'query' is set
      fail ArgumentError, "Missing the required parameter 'query' when calling DeliveryIndicationService.search" if query.nil?
      # resource path
      local_var_path = "/delivery-indication/search".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json;charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(query)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<DeliveryIndication>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeliveryIndicationService#search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
