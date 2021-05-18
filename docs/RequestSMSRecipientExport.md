# SibApiV3Sdk::RequestSmsRecipientExport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **notify_url** | **String** | URL that will be called once the export process is finished. For reference, https://help.sendinblue.com/hc/en-us/articles/360007666479 | [optional] |
| **recipients_type** | **String** | Filter the recipients based on how they interacted with the campaign |  |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::RequestSmsRecipientExport.new(
  notify_url: http://requestb.in/173lyyx1,
  recipients_type: answered
)
```

