# SibApiV3Sdk::GetEmailCampaigns

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaigns** | [**Array&lt;GetExtendedCampaignOverview&gt;**](GetExtendedCampaignOverview.md) |  | [optional] |
| **count** | **Integer** | Number of Email campaigns retrieved | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetEmailCampaigns.new(
  campaigns: null,
  count: 24
)
```

