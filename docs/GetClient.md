# SibApiV3Sdk::GetClient

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Login Email |  |
| **first_name** | **String** | First Name |  |
| **last_name** | **String** | Last Name |  |
| **company_name** | **String** | Name of the company |  |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetClient.new(
  email: john.smith@example.com,
  first_name: John,
  last_name: Smith,
  company_name: MyCompany
)
```

