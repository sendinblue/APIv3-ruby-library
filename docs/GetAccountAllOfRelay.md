# SibApiV3Sdk::GetAccountAllOfRelay

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Status of your transactional email Account (true&#x3D;Enabled, false&#x3D;Disabled) |  |
| **data** | [**GetAccountAllOfRelayData**](GetAccountAllOfRelayData.md) |  |  |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetAccountAllOfRelay.new(
  enabled: true,
  data: null
)
```

