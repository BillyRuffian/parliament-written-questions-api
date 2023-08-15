# ParliamentWrittenQuestions::WrittenStatementsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**api_writtenstatements_statements_date_uin_get**](WrittenStatementsApi.md#api_writtenstatements_statements_date_uin_get) | **GET** /api/writtenstatements/statements/{date}/{uin} | Returns a written statemnet |
| [**api_writtenstatements_statements_get**](WrittenStatementsApi.md#api_writtenstatements_statements_get) | **GET** /api/writtenstatements/statements | Returns a list of written statements |
| [**api_writtenstatements_statements_id_get**](WrittenStatementsApi.md#api_writtenstatements_statements_id_get) | **GET** /api/writtenstatements/statements/{id} | Returns a written statement |


## api_writtenstatements_statements_date_uin_get

> <StatementsViewModelItem> api_writtenstatements_statements_date_uin_get(date, uin, opts)

Returns a written statemnet

### Examples

```ruby
require 'time'
require 'parliament_written_questions'

api_instance = ParliamentWrittenQuestions::WrittenStatementsApi.new
date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Written statement on date specified
uin = 'uin_example' # String | Written statement with uid specified
opts = {
  expand_member: true # Boolean | Expand the details of Members in the results
}

begin
  # Returns a written statemnet
  result = api_instance.api_writtenstatements_statements_date_uin_get(date, uin, opts)
  p result
rescue ParliamentWrittenQuestions::ApiError => e
  puts "Error when calling WrittenStatementsApi->api_writtenstatements_statements_date_uin_get: #{e}"
end
```

#### Using the api_writtenstatements_statements_date_uin_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StatementsViewModelItem>, Integer, Hash)> api_writtenstatements_statements_date_uin_get_with_http_info(date, uin, opts)

```ruby
begin
  # Returns a written statemnet
  data, status_code, headers = api_instance.api_writtenstatements_statements_date_uin_get_with_http_info(date, uin, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StatementsViewModelItem>
rescue ParliamentWrittenQuestions::ApiError => e
  puts "Error when calling WrittenStatementsApi->api_writtenstatements_statements_date_uin_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Time** | Written statement on date specified |  |
| **uin** | **String** | Written statement with uid specified |  |
| **expand_member** | **Boolean** | Expand the details of Members in the results | [optional] |

### Return type

[**StatementsViewModelItem**](StatementsViewModelItem.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_writtenstatements_statements_get

> <StatementsViewModelSearchResult> api_writtenstatements_statements_get(opts)

Returns a list of written statements

### Examples

```ruby
require 'time'
require 'parliament_written_questions'

api_instance = ParliamentWrittenQuestions::WrittenStatementsApi.new
opts = {
  made_when_from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Written statements made on or after the date specified. Date format yyyy-mm-dd
  made_when_to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Written statements made on or before the date specified. Date format yyyy-mm-dd
  search_term: 'search_term_example', # String | Written questions / statements containing the search term specified, searches item content
  u_in: 'u_in_example', # String | Written questions / statements with the uin specified
  answering_bodies: [37], # Array<Integer> | Written questions / statements relating to the answering bodies with the IDs specified
  members: [37], # Array<Integer> | Written questions / statements relating to the members with the IDs specified
  house: ParliamentWrittenQuestions::HouseEnum::BICAMERAL, # HouseEnum | Written questions / statements relating to the House specified
  skip: 56, # Integer | Number of records to skip, default is 0
  take: 56, # Integer | Number of records to take, default is 20
  expand_member: true # Boolean | Expand the details of Members in the results
}

begin
  # Returns a list of written statements
  result = api_instance.api_writtenstatements_statements_get(opts)
  p result
rescue ParliamentWrittenQuestions::ApiError => e
  puts "Error when calling WrittenStatementsApi->api_writtenstatements_statements_get: #{e}"
end
```

#### Using the api_writtenstatements_statements_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StatementsViewModelSearchResult>, Integer, Hash)> api_writtenstatements_statements_get_with_http_info(opts)

```ruby
begin
  # Returns a list of written statements
  data, status_code, headers = api_instance.api_writtenstatements_statements_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StatementsViewModelSearchResult>
rescue ParliamentWrittenQuestions::ApiError => e
  puts "Error when calling WrittenStatementsApi->api_writtenstatements_statements_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **made_when_from** | **Time** | Written statements made on or after the date specified. Date format yyyy-mm-dd | [optional] |
| **made_when_to** | **Time** | Written statements made on or before the date specified. Date format yyyy-mm-dd | [optional] |
| **search_term** | **String** | Written questions / statements containing the search term specified, searches item content | [optional] |
| **u_in** | **String** | Written questions / statements with the uin specified | [optional] |
| **answering_bodies** | [**Array&lt;Integer&gt;**](Integer.md) | Written questions / statements relating to the answering bodies with the IDs specified | [optional] |
| **members** | [**Array&lt;Integer&gt;**](Integer.md) | Written questions / statements relating to the members with the IDs specified | [optional] |
| **house** | [**HouseEnum**](.md) | Written questions / statements relating to the House specified | [optional] |
| **skip** | **Integer** | Number of records to skip, default is 0 | [optional] |
| **take** | **Integer** | Number of records to take, default is 20 | [optional] |
| **expand_member** | **Boolean** | Expand the details of Members in the results | [optional] |

### Return type

[**StatementsViewModelSearchResult**](StatementsViewModelSearchResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_writtenstatements_statements_id_get

> <StatementsViewModelSearchResult> api_writtenstatements_statements_id_get(id, opts)

Returns a written statement

### Examples

```ruby
require 'time'
require 'parliament_written_questions'

api_instance = ParliamentWrittenQuestions::WrittenStatementsApi.new
id = 56 # Integer | Written statement with ID specified
opts = {
  expand_member: true # Boolean | Expand the details of Members in the results
}

begin
  # Returns a written statement
  result = api_instance.api_writtenstatements_statements_id_get(id, opts)
  p result
rescue ParliamentWrittenQuestions::ApiError => e
  puts "Error when calling WrittenStatementsApi->api_writtenstatements_statements_id_get: #{e}"
end
```

#### Using the api_writtenstatements_statements_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StatementsViewModelSearchResult>, Integer, Hash)> api_writtenstatements_statements_id_get_with_http_info(id, opts)

```ruby
begin
  # Returns a written statement
  data, status_code, headers = api_instance.api_writtenstatements_statements_id_get_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StatementsViewModelSearchResult>
rescue ParliamentWrittenQuestions::ApiError => e
  puts "Error when calling WrittenStatementsApi->api_writtenstatements_statements_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Written statement with ID specified |  |
| **expand_member** | **Boolean** | Expand the details of Members in the results | [optional] |

### Return type

[**StatementsViewModelSearchResult**](StatementsViewModelSearchResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

