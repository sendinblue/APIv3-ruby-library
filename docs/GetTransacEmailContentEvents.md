# SibApiV3Sdk::GetTransacEmailContentEvents

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the event that occurred on the sent email |  |
| **time** | **String** | Time at which the event occurred |  |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetTransacEmailContentEvents.new(
  name: delivered,
  time: 2017-03-12T12:30:00Z
)
```

