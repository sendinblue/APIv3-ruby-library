# SibApiV3Sdk::AbTestCampaignResultStatistics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **openers** | [**AbTestVersionStats**](AbTestVersionStats.md) |  |  |
| **clicks** | [**AbTestVersionStats**](AbTestVersionStats.md) |  |  |
| **unsubscribed** | [**AbTestVersionStats**](AbTestVersionStats.md) |  |  |
| **hard_bounces** | [**AbTestVersionStats**](AbTestVersionStats.md) |  |  |
| **soft_bounces** | [**AbTestVersionStats**](AbTestVersionStats.md) |  |  |
| **complaints** | [**AbTestVersionStats**](AbTestVersionStats.md) |  |  |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::AbTestCampaignResultStatistics.new(
  openers: null,
  clicks: null,
  unsubscribed: null,
  hard_bounces: null,
  soft_bounces: null,
  complaints: null
)
```

