# SibApiV3Sdk::GetIpFromSender

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ID of the dedicated IP |  |
| **ip** | **String** | Dedicated IP |  |
| **domain** | **String** | Domain associated to the IP |  |
| **weight** | **Integer** | Weight of the IP |  |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetIpFromSender.new(
  id: 3,
  ip: 123.65.8.22,
  domain: mailing.myshop.dom,
  weight: 75
)
```

