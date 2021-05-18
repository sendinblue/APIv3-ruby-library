# SibApiV3Sdk::UpdateEmailCampaignRecipients

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exclusion_list_ids** | **Array&lt;Integer&gt;** | List ids which have to be excluded from a campaign | [optional] |
| **list_ids** | **Array&lt;Integer&gt;** | Lists Ids to send the campaign to. REQUIRED if already not present in campaign and scheduledAt is not empty | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::UpdateEmailCampaignRecipients.new(
  exclusion_list_ids: null,
  list_ids: null
)
```

