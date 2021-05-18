# SibApiV3Sdk::GetExtendedCampaignOverviewAllOfSender

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Sender name of the campaign | [optional] |
| **email** | **String** | Sender email of the campaign | [optional] |
| **id** | **String** | Sender id of the campaign | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetExtendedCampaignOverviewAllOfSender.new(
  name: Marketing,
  email: marketing@mycompany.com,
  id: 43
)
```

