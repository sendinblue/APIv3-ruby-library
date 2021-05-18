# SibApiV3Sdk::CreateSmsCampaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the campaign |  |
| **sender** | **String** | Name of the sender. **The number of characters is limited to 11 for alphanumeric characters and 15 for numeric characters** |  |
| **content** | **String** | Content of the message. The maximum characters used per SMS is 160, if used more than that, it will be counted as more than one SMS |  |
| **recipients** | [**CreateSmsCampaignRecipients**](CreateSmsCampaignRecipients.md) |  | [optional] |
| **scheduled_at** | **String** | UTC date-time on which the campaign has to run (YYYY-MM-DDTHH:mm:ss.SSSZ). Prefer to pass your timezone in date-time format for accurate result. | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::CreateSmsCampaign.new(
  name: Spring Promo Code,
  sender: MyShop,
  content: Get a discount by visiting our NY store and saying : Happy Spring !,
  recipients: null,
  scheduled_at: 2017-05-05T12:30:00+02:00
)
```

