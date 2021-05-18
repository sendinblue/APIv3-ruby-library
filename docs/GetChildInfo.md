# SibApiV3Sdk::GetChildInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Login Email |  |
| **first_name** | **String** | First Name |  |
| **last_name** | **String** | Last Name |  |
| **company_name** | **String** | Name of the company |  |
| **credits** | [**GetChildInfoAllOfCredits**](GetChildInfoAllOfCredits.md) |  | [optional] |
| **statistics** | [**GetChildInfoAllOfStatistics**](GetChildInfoAllOfStatistics.md) |  | [optional] |
| **password** | **String** | The encrypted password of child account |  |
| **ips** | **Array&lt;String&gt;** | IP(s) associated to a child account user | [optional] |
| **api_keys** | [**GetChildInfoAllOfApiKeys**](GetChildInfoAllOfApiKeys.md) |  | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetChildInfo.new(
  email: john.smith@example.com,
  first_name: John,
  last_name: Smith,
  company_name: MyCompany,
  credits: null,
  statistics: null,
  password: abC01De2fGHI3jkL,
  ips: null,
  api_keys: null
)
```

