# SibApiV3Sdk::CreateEmailCampaignRecipients

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exclusion_list_ids** | **Array&lt;Integer&gt;** | List ids to exclude from the campaign | [optional] |
| **list_ids** | **Array&lt;Integer&gt;** | Mandatory if scheduledAt is not empty. List Ids to send the campaign to | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::CreateEmailCampaignRecipients.new(
  exclusion_list_ids: null,
  list_ids: null
)
```

