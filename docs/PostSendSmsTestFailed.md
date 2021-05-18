# SibApiV3Sdk::PostSendSmsTestFailed

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** | Response code |  |
| **message** | **String** | Response message |  |
| **unexisting_sms** | **Array&lt;String&gt;** |  | [optional] |
| **without_list_sms** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::PostSendSmsTestFailed.new(
  code: null,
  message: The SMS could not be sent to all recipients,
  unexisting_sms: null,
  without_list_sms: null
)
```

