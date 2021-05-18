# SibApiV3Sdk::AbTestVersionStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version_a** | **String** | percentage of an event for version A |  |
| **version_b** | **String** | percentage of an event for version B |  |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::AbTestVersionStats.new(
  version_a: 50%,
  version_b: 50%
)
```

