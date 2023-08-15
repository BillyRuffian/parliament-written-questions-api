# ParliamentWrittenQuestions::QuestionsViewModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **asking_member_id** | **Integer** |  | [optional] |
| **asking_member** | [**MemberViewModel**](MemberViewModel.md) |  | [optional] |
| **house** | [**HouseEnum**](HouseEnum.md) |  | [optional] |
| **member_has_interest** | **Boolean** |  | [optional] |
| **date_tabled** | **Time** |  | [optional] |
| **date_for_answer** | **Time** |  | [optional] |
| **uin** | **String** |  | [optional] |
| **question_text** | **String** |  | [optional] |
| **answering_body_id** | **Integer** |  | [optional] |
| **answering_body_name** | **String** |  | [optional] |
| **is_withdrawn** | **Boolean** |  | [optional] |
| **is_named_day** | **Boolean** |  | [optional] |
| **grouped_questions** | **Array&lt;String&gt;** |  | [optional] |
| **answer_is_holding** | **Boolean** |  | [optional] |
| **answer_is_correction** | **Boolean** |  | [optional] |
| **answering_member_id** | **Integer** |  | [optional] |
| **answering_member** | [**MemberViewModel**](MemberViewModel.md) |  | [optional] |
| **correcting_member_id** | **Integer** |  | [optional] |
| **correcting_member** | [**MemberViewModel**](MemberViewModel.md) |  | [optional] |
| **date_answered** | **Time** |  | [optional] |
| **answer_text** | **String** |  | [optional] |
| **original_answer_text** | **String** |  | [optional] |
| **comparable_answer_text** | **String** |  | [optional] |
| **date_answer_corrected** | **Time** |  | [optional] |
| **date_holding_answer** | **Time** |  | [optional] |
| **attachment_count** | **Integer** |  | [optional] |
| **heading** | **String** |  | [optional] |
| **attachments** | [**Array&lt;AttachmentViewModel&gt;**](AttachmentViewModel.md) |  | [optional] |
| **grouped_questions_dates** | [**Array&lt;GroupedQuestionViewModel&gt;**](GroupedQuestionViewModel.md) |  | [optional] |

## Example

```ruby
require 'parliament_written_questions'

instance = ParliamentWrittenQuestions::QuestionsViewModel.new(
  id: null,
  asking_member_id: null,
  asking_member: null,
  house: null,
  member_has_interest: null,
  date_tabled: null,
  date_for_answer: null,
  uin: null,
  question_text: null,
  answering_body_id: null,
  answering_body_name: null,
  is_withdrawn: null,
  is_named_day: null,
  grouped_questions: null,
  answer_is_holding: null,
  answer_is_correction: null,
  answering_member_id: null,
  answering_member: null,
  correcting_member_id: null,
  correcting_member: null,
  date_answered: null,
  answer_text: null,
  original_answer_text: null,
  comparable_answer_text: null,
  date_answer_corrected: null,
  date_holding_answer: null,
  attachment_count: null,
  heading: null,
  attachments: null,
  grouped_questions_dates: null
)
```

