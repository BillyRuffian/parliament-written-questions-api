# ParliamentWrittenQuestions::StatementsViewModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **member_id** | **Integer** |  | [optional] |
| **member** | [**MemberViewModel**](MemberViewModel.md) |  | [optional] |
| **member_role** | **String** |  | [optional] |
| **uin** | **String** |  | [optional] |
| **date_made** | **Time** |  | [optional] |
| **answering_body_id** | **Integer** |  | [optional] |
| **answering_body_name** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **text** | **String** |  | [optional] |
| **house** | [**HouseEnum**](HouseEnum.md) |  | [optional] |
| **notice_number** | **Integer** |  | [optional] |
| **has_attachments** | **Boolean** |  | [optional] |
| **has_linked_statements** | **Boolean** |  | [optional] |
| **linked_statements** | [**Array&lt;LinkedStatements&gt;**](LinkedStatements.md) |  | [optional] |
| **attachments** | [**Array&lt;AttachmentViewModel&gt;**](AttachmentViewModel.md) |  | [optional] |

## Example

```ruby
require 'parliament_written_questions'

instance = ParliamentWrittenQuestions::StatementsViewModel.new(
  id: null,
  member_id: null,
  member: null,
  member_role: null,
  uin: null,
  date_made: null,
  answering_body_id: null,
  answering_body_name: null,
  title: null,
  text: null,
  house: null,
  notice_number: null,
  has_attachments: null,
  has_linked_statements: null,
  linked_statements: null,
  attachments: null
)
```

