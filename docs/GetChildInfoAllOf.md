# SibApiV3Sdk::GetChildInfoAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credits** | [**GetChildInfoAllOfCredits**](GetChildInfoAllOfCredits.md) |  | [optional] |
| **statistics** | [**GetChildInfoAllOfStatistics**](GetChildInfoAllOfStatistics.md) |  | [optional] |
| **password** | **String** | The encrypted password of child account |  |
| **ips** | **Array&lt;String&gt;** | IP(s) associated to a child account user | [optional] |
| **api_keys** | [**GetChildInfoAllOfApiKeys**](GetChildInfoAllOfApiKeys.md) |  | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetChildInfoAllOf.new(
  credits: null,
  statistics: null,
  password: abC01De2fGHI3jkL,
  ips: null,
  api_keys: null
)
```

