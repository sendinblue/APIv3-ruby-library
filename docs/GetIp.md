# SibApiV3Sdk::GetIp

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ID of the dedicated IP |  |
| **ip** | **String** | Dedicated IP |  |
| **active** | **Boolean** | Status of the IP (true&#x3D;active, false&#x3D;inactive) |  |
| **domain** | **String** | Domain associated to the IP |  |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetIp.new(
  id: 3,
  ip: 123.65.8.22,
  active: true,
  domain: mailing.myshop.com
)
```

