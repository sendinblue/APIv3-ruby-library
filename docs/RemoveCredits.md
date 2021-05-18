# SibApiV3Sdk::RemoveCredits

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sms** | **Integer** | Required if email credits are empty. SMS credits to be removed from the child account | [optional] |
| **email** | **Integer** | Required if sms credits are empty. Email credits to be removed from the child account | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::RemoveCredits.new(
  sms: 300,
  email: 500
)
```

