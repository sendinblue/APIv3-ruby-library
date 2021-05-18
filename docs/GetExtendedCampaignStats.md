# SibApiV3Sdk::GetExtendedCampaignStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **global_stats** | [**GetCampaignStats**](GetCampaignStats.md) | Overall statistics of the campaign |  |
| **campaign_stats** | [**Array&lt;GetCampaignStats&gt;**](GetCampaignStats.md) | List-wise statistics of the campaign. |  |
| **mirror_click** | **Integer** | Number of clicks on mirror link |  |
| **remaining** | **Integer** | Number of remaning emails to send |  |
| **links_stats** | **Object** | Statistics about the number of clicks for the links |  |
| **stats_by_domain** | [**Hash&lt;String, GetCampaignStats&gt;**](GetCampaignStats.md) |  |  |
| **stats_by_device** | [**GetStatsByDevice**](GetStatsByDevice.md) |  |  |
| **stats_by_browser** | [**Hash&lt;String, GetDeviceBrowserStats&gt;**](GetDeviceBrowserStats.md) |  |  |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetExtendedCampaignStats.new(
  global_stats: null,
  campaign_stats: null,
  mirror_click: 120,
  remaining: 1000,
  links_stats: {&quot;example.abc.com&quot;:7,&quot;example.domain.com&quot;:10},
  stats_by_domain: null,
  stats_by_device: null,
  stats_by_browser: null
)
```

