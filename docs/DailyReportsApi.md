# ParliamentWrittenQuestions::DailyReportsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**api_dailyreports_dailyreports_get**](DailyReportsApi.md#api_dailyreports_dailyreports_get) | **GET** /api/dailyreports/dailyreports | Returns a list of daily reports |


## api_dailyreports_dailyreports_get

> <DailyReportViewModelSearchResult> api_dailyreports_dailyreports_get(opts)

Returns a list of daily reports

### Examples

```ruby
require 'time'
require 'parliament_written_questions'

api_instance = ParliamentWrittenQuestions::DailyReportsApi.new
opts = {
  date_from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Daily report with report date on or after the date specified. Date format yyyy-mm-dd
  date_to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Daily report with report date on or before the date specified. Date format yyyy-mm-dd
  house: ParliamentWrittenQuestions::HouseEnum::BICAMERAL, # HouseEnum | Daily report relating to the House specified. Defaults to Bicameral
  skip: 56, # Integer | Number of records to skip, default is 0
  take: 56 # Integer | Number of records to take, default is 20
}

begin
  # Returns a list of daily reports
  result = api_instance.api_dailyreports_dailyreports_get(opts)
  p result
rescue ParliamentWrittenQuestions::ApiError => e
  puts "Error when calling DailyReportsApi->api_dailyreports_dailyreports_get: #{e}"
end
```

#### Using the api_dailyreports_dailyreports_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DailyReportViewModelSearchResult>, Integer, Hash)> api_dailyreports_dailyreports_get_with_http_info(opts)

```ruby
begin
  # Returns a list of daily reports
  data, status_code, headers = api_instance.api_dailyreports_dailyreports_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DailyReportViewModelSearchResult>
rescue ParliamentWrittenQuestions::ApiError => e
  puts "Error when calling DailyReportsApi->api_dailyreports_dailyreports_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_from** | **Time** | Daily report with report date on or after the date specified. Date format yyyy-mm-dd | [optional] |
| **date_to** | **Time** | Daily report with report date on or before the date specified. Date format yyyy-mm-dd | [optional] |
| **house** | [**HouseEnum**](.md) | Daily report relating to the House specified. Defaults to Bicameral | [optional] |
| **skip** | **Integer** | Number of records to skip, default is 0 | [optional] |
| **take** | **Integer** | Number of records to take, default is 20 | [optional] |

### Return type

[**DailyReportViewModelSearchResult**](DailyReportViewModelSearchResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

