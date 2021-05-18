# SibApiV3Sdk::CreateSenderIps

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip** | **String** | Dedicated IP available in your account |  |
| **domain** | **String** | Domain of the IP |  |
| **weight** | **Integer** | Weight to apply to the IP. Sum of all IP weights must be 100. Should be passed for either ALL or NONE of the IPs. If it&#39;s not passed, the sending will be equally balanced on all IPs. | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::CreateSenderIps.new(
  ip: 123.98.689.7,
  domain: mycompany.com,
  weight: 50
)
```

