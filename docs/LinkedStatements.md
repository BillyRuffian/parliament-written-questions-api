# ParliamentWrittenQuestions::LinkedStatements

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **linked_statement_id** | **Integer** |  | [optional] |
| **link_type** | [**StatementLinkTypeEnum**](StatementLinkTypeEnum.md) |  | [optional] |
| **link_date** | **Time** |  | [optional] |

## Example

```ruby
require 'parliament_written_questions'

instance = ParliamentWrittenQuestions::LinkedStatements.new(
  linked_statement_id: null,
  link_type: null,
  link_date: null
)
```

