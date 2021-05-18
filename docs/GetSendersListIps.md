# SibApiV3Sdk::GetSendersListIps

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip** | **String** | Dedicated IP available in your account |  |
| **domain** | **String** | Domain of the IP |  |
| **weight** | **Integer** | Weight of the IP for this sender |  |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetSendersListIps.new(
  ip: 123.98.689.7,
  domain: mycompany.com,
  weight: 50
)
```

