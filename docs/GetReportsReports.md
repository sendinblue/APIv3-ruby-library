# SibApiV3Sdk::GetReportsReports

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** | Date of the statistics |  |
| **requests** | **Integer** | Number of requests for the date |  |
| **delivered** | **Integer** | Number of delivered emails for the date |  |
| **hard_bounces** | **Integer** | Number of hardbounces for the date |  |
| **soft_bounces** | **Integer** | Number of softbounces for the date |  |
| **clicks** | **Integer** | Number of clicks for the date |  |
| **unique_clicks** | **Integer** | Number of unique clicks for the date |  |
| **opens** | **Integer** | Number of openings for the date |  |
| **unique_opens** | **Integer** | Number of unique openings for the date |  |
| **spam_reports** | **Integer** | Number of complaints (spam reports) for the date |  |
| **blocked** | **Integer** | Number of blocked emails for the date |  |
| **invalid** | **Integer** | Number of invalid emails for the date |  |
| **unsubscribed** | **Integer** | Number of unsubscribed emails for the date |  |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetReportsReports.new(
  date: Thu Apr 06 05:30:00 IST 2017,
  requests: 65,
  delivered: 63,
  hard_bounces: 1,
  soft_bounces: 1,
  clicks: 6,
  unique_clicks: 5,
  opens: 58,
  unique_opens: 52,
  spam_reports: 0,
  blocked: 0,
  invalid: 0,
  unsubscribed: 0
)
```

