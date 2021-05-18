# SibApiV3Sdk::GetChildInfoAllOfStatistics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **previous_month_total_sent** | **Integer** | Overall emails sent for the previous month | [optional] |
| **current_month_total_sent** | **Integer** | Overall emails sent for current month | [optional] |
| **total_sent** | **Integer** | Overall emails sent for since the account exists | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetChildInfoAllOfStatistics.new(
  previous_month_total_sent: 7654,
  current_month_total_sent: 4566,
  total_sent: 987554
)
```

