# SibApiV3Sdk::GetProcesses

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **processes** | [**Array&lt;GetProcess&gt;**](GetProcess.md) | List of processes available on your account | [optional] |
| **count** | **Integer** | Number of processes available on your account | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetProcesses.new(
  processes: null,
  count: 5
)
```

