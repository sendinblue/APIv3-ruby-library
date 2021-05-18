# SibApiV3Sdk::SendSmtpEmailTo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address of the recipient |  |
| **name** | **String** | Name of the recipient. Maximum allowed characters are 70. | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::SendSmtpEmailTo.new(
  email: jimmy98@example.com,
  name: Jimmy
)
```

