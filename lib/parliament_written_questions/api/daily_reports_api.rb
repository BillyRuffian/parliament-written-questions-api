=begin
#Written Questions Service API

#Data around written questions and answers, as well as written ministerial statements.

The version of the OpenAPI document: v1
Contact: softwareengineering@parliament.uk
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'cgi'

module ParliamentWrittenQuestions
  class DailyReportsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns a list of daily reports
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :date_from Daily report with report date on or after the date specified. Date format yyyy-mm-dd
    # @option opts [Time] :date_to Daily report with report date on or before the date specified. Date format yyyy-mm-dd
    # @option opts [HouseEnum] :house Daily report relating to the House specified. Defaults to Bicameral
    # @option opts [Integer] :skip Number of records to skip, default is 0
    # @option opts [Integer] :take Number of records to take, default is 20
    # @return [DailyReportViewModelSearchResult]
    def api_dailyreports_dailyreports_get(opts = {})
      data, _status_code, _headers = api_dailyreports_dailyreports_get_with_http_info(opts)
      data
    end

    # Returns a list of daily reports
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :date_from Daily report with report date on or after the date specified. Date format yyyy-mm-dd
    # @option opts [Time] :date_to Daily report with report date on or before the date specified. Date format yyyy-mm-dd
    # @option opts [HouseEnum] :house Daily report relating to the House specified. Defaults to Bicameral
    # @option opts [Integer] :skip Number of records to skip, default is 0
    # @option opts [Integer] :take Number of records to take, default is 20
    # @return [Array<(DailyReportViewModelSearchResult, Integer, Hash)>] DailyReportViewModelSearchResult data, response status code and response headers
    def api_dailyreports_dailyreports_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DailyReportsApi.api_dailyreports_dailyreports_get ...'
      end
      if @api_client.config.client_side_validation && !opts[:'skip'].nil? && opts[:'skip'] > 2147483647
        fail ArgumentError, 'invalid value for "opts[:"skip"]" when calling DailyReportsApi.api_dailyreports_dailyreports_get, must be smaller than or equal to 2147483647.'
      end

      if @api_client.config.client_side_validation && !opts[:'skip'].nil? && opts[:'skip'] < 0
        fail ArgumentError, 'invalid value for "opts[:"skip"]" when calling DailyReportsApi.api_dailyreports_dailyreports_get, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'take'].nil? && opts[:'take'] > 2147483647
        fail ArgumentError, 'invalid value for "opts[:"take"]" when calling DailyReportsApi.api_dailyreports_dailyreports_get, must be smaller than or equal to 2147483647.'
      end

      if @api_client.config.client_side_validation && !opts[:'take'].nil? && opts[:'take'] < 0
        fail ArgumentError, 'invalid value for "opts[:"take"]" when calling DailyReportsApi.api_dailyreports_dailyreports_get, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/api/dailyreports/dailyreports'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'dateFrom'] = opts[:'date_from'] if !opts[:'date_from'].nil?
      query_params[:'dateTo'] = opts[:'date_to'] if !opts[:'date_to'].nil?
      query_params[:'house'] = opts[:'house'] if !opts[:'house'].nil?
      query_params[:'skip'] = opts[:'skip'] if !opts[:'skip'].nil?
      query_params[:'take'] = opts[:'take'] if !opts[:'take'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DailyReportViewModelSearchResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"DailyReportsApi.api_dailyreports_dailyreports_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DailyReportsApi#api_dailyreports_dailyreports_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end