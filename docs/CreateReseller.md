# SibApiV3Sdk::CreateReseller

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_key** | **String** | AuthKey of Reseller child created |  |
| **id** | **Integer** | Id of Reseller child created | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::CreateReseller.new(
  auth_key: xkeysib-21881axxxxxcc92e04-mIrexxxx7z,
  id: 1234567
)
```

