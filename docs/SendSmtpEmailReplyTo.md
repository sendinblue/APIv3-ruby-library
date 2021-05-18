# SibApiV3Sdk::SendSmtpEmailReplyTo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address in reply to |  |
| **name** | **String** | Name in reply to. Maximum allowed characters are 70. | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::SendSmtpEmailReplyTo.new(
  email: ann6533@example.com,
  name: Ann
)
```

