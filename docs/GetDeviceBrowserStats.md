# SibApiV3Sdk::GetDeviceBrowserStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **clickers** | **Integer** | Number of total clicks for the campaign using the particular browser |  |
| **unique_clicks** | **Integer** | Number of unique clicks for the campaign using the particular browser |  |
| **viewed** | **Integer** | Number of openings for the campaign using the particular browser |  |
| **unique_views** | **Integer** | Number of unique openings for the campaign using the particular browser |  |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetDeviceBrowserStats.new(
  clickers: 2665,
  unique_clicks: 2300,
  viewed: 8999,
  unique_views: 7779
)
```

