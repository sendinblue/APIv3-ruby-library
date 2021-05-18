# SibApiV3Sdk::GetAccountAllOfMarketingAutomation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | Marketing Automation Tracker ID | [optional] |
| **enabled** | **Boolean** | Status of Marketing Automation Plateform activation for your account (true&#x3D;enabled, false&#x3D;disabled) |  |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetAccountAllOfMarketingAutomation.new(
  key: iso05aopqych87ysy0jymf,
  enabled: false
)
```

