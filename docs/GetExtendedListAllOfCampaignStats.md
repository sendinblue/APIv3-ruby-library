# SibApiV3Sdk::GetExtendedListAllOfCampaignStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **Integer** | ID of the campaign |  |
| **stats** | [**GetCampaignStats**](GetCampaignStats.md) |  |  |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetExtendedListAllOfCampaignStats.new(
  campaign_id: 143,
  stats: null
)
```

