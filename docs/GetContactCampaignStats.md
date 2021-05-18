# SibApiV3Sdk::GetContactCampaignStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **messages_sent** | [**Array&lt;GetExtendedContactDetailsAllOfStatisticsMessagesSent&gt;**](GetExtendedContactDetailsAllOfStatisticsMessagesSent.md) |  | [optional] |
| **hard_bounces** | [**Array&lt;GetExtendedContactDetailsAllOfStatisticsMessagesSent&gt;**](GetExtendedContactDetailsAllOfStatisticsMessagesSent.md) |  | [optional] |
| **soft_bounces** | [**Array&lt;GetExtendedContactDetailsAllOfStatisticsMessagesSent&gt;**](GetExtendedContactDetailsAllOfStatisticsMessagesSent.md) |  | [optional] |
| **complaints** | [**Array&lt;GetExtendedContactDetailsAllOfStatisticsMessagesSent&gt;**](GetExtendedContactDetailsAllOfStatisticsMessagesSent.md) |  | [optional] |
| **unsubscriptions** | [**GetContactCampaignStatsUnsubscriptions**](GetContactCampaignStatsUnsubscriptions.md) |  | [optional] |
| **opened** | [**Array&lt;GetContactCampaignStatsOpened&gt;**](GetContactCampaignStatsOpened.md) |  | [optional] |
| **clicked** | [**Array&lt;GetContactCampaignStatsClicked&gt;**](GetContactCampaignStatsClicked.md) |  | [optional] |
| **transac_attributes** | [**Array&lt;GetContactCampaignStatsTransacAttributes&gt;**](GetContactCampaignStatsTransacAttributes.md) |  | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetContactCampaignStats.new(
  messages_sent: null,
  hard_bounces: null,
  soft_bounces: null,
  complaints: null,
  unsubscriptions: null,
  opened: null,
  clicked: null,
  transac_attributes: null
)
```

