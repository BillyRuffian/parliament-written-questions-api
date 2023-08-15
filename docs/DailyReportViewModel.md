# ParliamentWrittenQuestions::DailyReportViewModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **house** | [**HouseEnum**](HouseEnum.md) |  | [optional] |
| **date** | **Time** |  | [optional] |
| **file_size_bytes** | **Integer** |  | [optional] |
| **url** | **String** |  | [optional] |

## Example

```ruby
require 'parliament_written_questions'

instance = ParliamentWrittenQuestions::DailyReportViewModel.new(
  house: null,
  date: null,
  file_size_bytes: null,
  url: null
)
```

