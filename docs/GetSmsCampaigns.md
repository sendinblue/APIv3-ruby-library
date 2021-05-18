# SibApiV3Sdk::GetSmsCampaigns

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaigns** | [**Array&lt;GetSmsCampaignOverview&gt;**](GetSmsCampaignOverview.md) |  | [optional] |
| **count** | **Integer** | Number of SMS campaigns retrieved | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetSmsCampaigns.new(
  campaigns: null,
  count: 12
)
```

