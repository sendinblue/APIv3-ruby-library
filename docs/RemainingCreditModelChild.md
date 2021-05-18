# SibApiV3Sdk::RemainingCreditModelChild

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sms** | **Float** | SMS Credits remaining for child account |  |
| **email** | **Float** | Email Credits remaining for child account |  |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::RemainingCreditModelChild.new(
  sms: 500.0,
  email: 2000.0
)
```

