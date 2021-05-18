# SibApiV3Sdk::GetExtendedContactDetailsAllOfStatisticsUnsubscriptionsUserUnsubscription

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **Integer** | ID of the campaign which generated the event |  |
| **event_time** | **String** | UTC date-time of the event |  |
| **ip** | **String** | IP from which the user has unsubscribed | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetExtendedContactDetailsAllOfStatisticsUnsubscriptionsUserUnsubscription.new(
  campaign_id: 3,
  event_time: 2017-03-12T20:15:13Z,
  ip: 165.87.3.15
)
```

