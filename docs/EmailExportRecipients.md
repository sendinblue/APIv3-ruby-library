# SibApiV3Sdk::EmailExportRecipients

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **notify_url** | **String** | Webhook called once the export process is finished. For reference, https://help.sendinblue.com/hc/en-us/articles/360007666479 | [optional] |
| **recipients_type** | **String** | Type of recipients to export for a campaign |  |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::EmailExportRecipients.new(
  notify_url: http://requestb.in/173lyyx1,
  recipients_type: openers
)
```

