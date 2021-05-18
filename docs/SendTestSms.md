# SibApiV3Sdk::SendTestSms

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number** | **String** | Mobile number of the recipient with the country code. This number must belong to one of your contacts in SendinBlue account and must not be blacklisted | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::SendTestSms.new(
  phone_number: 33689965433
)
```

