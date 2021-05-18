# SibApiV3Sdk::GetExtendedListAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | ID of the folder |  |
| **created_at** | **String** | Creation UTC date-time of the list (YYYY-MM-DDTHH:mm:ss.SSSZ) |  |
| **campaign_stats** | [**Array&lt;GetExtendedListAllOfCampaignStats&gt;**](GetExtendedListAllOfCampaignStats.md) |  | [optional] |
| **dynamic_list** | **Boolean** | Status telling if the list is dynamic or not (true&#x3D;dynamic, false&#x3D;not dynamic) | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetExtendedListAllOf.new(
  folder_id: 2,
  created_at: 2017-03-13T17:05:09Z,
  campaign_stats: null,
  dynamic_list: false
)
```

