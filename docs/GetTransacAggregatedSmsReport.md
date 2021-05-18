# SibApiV3Sdk::GetTransacAggregatedSmsReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **range** | **String** | Time frame of the report | [optional] |
| **requests** | **Integer** | Number of requests for the timeframe | [optional] |
| **delivered** | **Integer** | Number of delivered SMS for the timeframe | [optional] |
| **hard_bounces** | **Integer** | Number of hardbounces for the timeframe | [optional] |
| **soft_bounces** | **Integer** | Number of softbounces for the timeframe | [optional] |
| **blocked** | **Integer** | Number of blocked contact for the timeframe | [optional] |
| **unsubscribed** | **Integer** | Number of unsubscription for the timeframe | [optional] |
| **replied** | **Integer** | Number of answered SMS for the timeframe | [optional] |
| **accepted** | **Integer** | Number of accepted for the timeframe | [optional] |
| **rejected** | **Integer** | Number of rejected for the timeframe | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetTransacAggregatedSmsReport.new(
  range: 2016-09-08|2017-04-06,
  requests: 263,
  delivered: 249,
  hard_bounces: 1,
  soft_bounces: 4,
  blocked: 2,
  unsubscribed: 6,
  replied: 12,
  accepted: 252,
  rejected: 8
)
```

