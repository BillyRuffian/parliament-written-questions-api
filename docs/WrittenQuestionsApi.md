# ParliamentWrittenQuestions::WrittenQuestionsApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**api_writtenquestions_questions_date_uin_get**](WrittenQuestionsApi.md#api_writtenquestions_questions_date_uin_get) | **GET** /api/writtenquestions/questions/{date}/{uin} | Returns a written question |
| [**api_writtenquestions_questions_get**](WrittenQuestionsApi.md#api_writtenquestions_questions_get) | **GET** /api/writtenquestions/questions | Returns a list of written questions |
| [**api_writtenquestions_questions_id_get**](WrittenQuestionsApi.md#api_writtenquestions_questions_id_get) | **GET** /api/writtenquestions/questions/{id} | Returns a written question |


## api_writtenquestions_questions_date_uin_get

> <QuestionsViewModelItem> api_writtenquestions_questions_date_uin_get(date, uin, opts)

Returns a written question

### Examples

```ruby
require 'time'
require 'parliament_written_questions'

api_instance = ParliamentWrittenQuestions::WrittenQuestionsApi.new
date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Written question on date specified
uin = 'uin_example' # String | Written question with uid specified
opts = {
  expand_member: true # Boolean | Expand the details of Members in the results
}

begin
  # Returns a written question
  result = api_instance.api_writtenquestions_questions_date_uin_get(date, uin, opts)
  p result
rescue ParliamentWrittenQuestions::ApiError => e
  puts "Error when calling WrittenQuestionsApi->api_writtenquestions_questions_date_uin_get: #{e}"
end
```

#### Using the api_writtenquestions_questions_date_uin_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QuestionsViewModelItem>, Integer, Hash)> api_writtenquestions_questions_date_uin_get_with_http_info(date, uin, opts)

```ruby
begin
  # Returns a written question
  data, status_code, headers = api_instance.api_writtenquestions_questions_date_uin_get_with_http_info(date, uin, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QuestionsViewModelItem>
rescue ParliamentWrittenQuestions::ApiError => e
  puts "Error when calling WrittenQuestionsApi->api_writtenquestions_questions_date_uin_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Time** | Written question on date specified |  |
| **uin** | **String** | Written question with uid specified |  |
| **expand_member** | **Boolean** | Expand the details of Members in the results | [optional] |

### Return type

[**QuestionsViewModelItem**](QuestionsViewModelItem.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_writtenquestions_questions_get

> <QuestionsViewModelSearchResult> api_writtenquestions_questions_get(opts)

Returns a list of written questions

### Examples

```ruby
require 'time'
require 'parliament_written_questions'

api_instance = ParliamentWrittenQuestions::WrittenQuestionsApi.new
opts = {
  asking_member_id: 56, # Integer | Written questions asked by member with member ID specified
  answering_member_id: 56, # Integer | Written questions answered by member with member ID specified
  tabled_when_from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Written questions tabled on or after the date specified. Date format yyyy-mm-dd
  tabled_when_to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Written questions tabled on or before the date specified. Date format yyyy-mm-dd
  answered: ParliamentWrittenQuestions::Answered::ANY, # Answered | Written questions that have been answered, unanswered or either.
  answered_when_from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Written questions answered on or after the date specified. Date format yyyy-mm-dd
  answered_when_to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Written questions answered on or before the date specified. Date format yyyy-mm-dd
  question_status: ParliamentWrittenQuestions::QuestionStatusEnum::NOT_ANSWERED, # QuestionStatusEnum | Written questions with the status specified
  include_withdrawn: true, # Boolean | Include written questions that have been withdrawn
  expand_member: true, # Boolean | Expand the details of Members in the results
  corrected_when_from: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Written questions corrected on or after the date specified. Date format yyyy-mm-dd
  corrected_when_to: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Written questions corrected on or before the date specified. Date format yyyy-mm-dd
  search_term: 'search_term_example', # String | Written questions / statements containing the search term specified, searches item content
  u_in: 'u_in_example', # String | Written questions / statements with the uin specified
  answering_bodies: [37], # Array<Integer> | Written questions / statements relating to the answering bodies with the IDs specified
  members: [37], # Array<Integer> | Written questions / statements relating to the members with the IDs specified
  house: ParliamentWrittenQuestions::HouseEnum::BICAMERAL, # HouseEnum | Written questions / statements relating to the House specified
  skip: 56, # Integer | Number of records to skip, default is 0
  take: 56 # Integer | Number of records to take, default is 20
}

begin
  # Returns a list of written questions
  result = api_instance.api_writtenquestions_questions_get(opts)
  p result
rescue ParliamentWrittenQuestions::ApiError => e
  puts "Error when calling WrittenQuestionsApi->api_writtenquestions_questions_get: #{e}"
end
```

#### Using the api_writtenquestions_questions_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QuestionsViewModelSearchResult>, Integer, Hash)> api_writtenquestions_questions_get_with_http_info(opts)

```ruby
begin
  # Returns a list of written questions
  data, status_code, headers = api_instance.api_writtenquestions_questions_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QuestionsViewModelSearchResult>
rescue ParliamentWrittenQuestions::ApiError => e
  puts "Error when calling WrittenQuestionsApi->api_writtenquestions_questions_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asking_member_id** | **Integer** | Written questions asked by member with member ID specified | [optional] |
| **answering_member_id** | **Integer** | Written questions answered by member with member ID specified | [optional] |
| **tabled_when_from** | **Time** | Written questions tabled on or after the date specified. Date format yyyy-mm-dd | [optional] |
| **tabled_when_to** | **Time** | Written questions tabled on or before the date specified. Date format yyyy-mm-dd | [optional] |
| **answered** | [**Answered**](.md) | Written questions that have been answered, unanswered or either. | [optional] |
| **answered_when_from** | **Time** | Written questions answered on or after the date specified. Date format yyyy-mm-dd | [optional] |
| **answered_when_to** | **Time** | Written questions answered on or before the date specified. Date format yyyy-mm-dd | [optional] |
| **question_status** | [**QuestionStatusEnum**](.md) | Written questions with the status specified | [optional] |
| **include_withdrawn** | **Boolean** | Include written questions that have been withdrawn | [optional] |
| **expand_member** | **Boolean** | Expand the details of Members in the results | [optional] |
| **corrected_when_from** | **Time** | Written questions corrected on or after the date specified. Date format yyyy-mm-dd | [optional] |
| **corrected_when_to** | **Time** | Written questions corrected on or before the date specified. Date format yyyy-mm-dd | [optional] |
| **search_term** | **String** | Written questions / statements containing the search term specified, searches item content | [optional] |
| **u_in** | **String** | Written questions / statements with the uin specified | [optional] |
| **answering_bodies** | [**Array&lt;Integer&gt;**](Integer.md) | Written questions / statements relating to the answering bodies with the IDs specified | [optional] |
| **members** | [**Array&lt;Integer&gt;**](Integer.md) | Written questions / statements relating to the members with the IDs specified | [optional] |
| **house** | [**HouseEnum**](.md) | Written questions / statements relating to the House specified | [optional] |
| **skip** | **Integer** | Number of records to skip, default is 0 | [optional] |
| **take** | **Integer** | Number of records to take, default is 20 | [optional] |

### Return type

[**QuestionsViewModelSearchResult**](QuestionsViewModelSearchResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## api_writtenquestions_questions_id_get

> <QuestionsViewModelItem> api_writtenquestions_questions_id_get(id, opts)

Returns a written question

### Examples

```ruby
require 'time'
require 'parliament_written_questions'

api_instance = ParliamentWrittenQuestions::WrittenQuestionsApi.new
id = 56 # Integer | written question with ID specified
opts = {
  expand_member: true # Boolean | Expand the details of Members in the result
}

begin
  # Returns a written question
  result = api_instance.api_writtenquestions_questions_id_get(id, opts)
  p result
rescue ParliamentWrittenQuestions::ApiError => e
  puts "Error when calling WrittenQuestionsApi->api_writtenquestions_questions_id_get: #{e}"
end
```

#### Using the api_writtenquestions_questions_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QuestionsViewModelItem>, Integer, Hash)> api_writtenquestions_questions_id_get_with_http_info(id, opts)

```ruby
begin
  # Returns a written question
  data, status_code, headers = api_instance.api_writtenquestions_questions_id_get_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QuestionsViewModelItem>
rescue ParliamentWrittenQuestions::ApiError => e
  puts "Error when calling WrittenQuestionsApi->api_writtenquestions_questions_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | written question with ID specified |  |
| **expand_member** | **Boolean** | Expand the details of Members in the result | [optional] |

### Return type

[**QuestionsViewModelItem**](QuestionsViewModelItem.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

