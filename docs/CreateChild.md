# SibApiV3Sdk::CreateChild

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address to create the child account |  |
| **first_name** | **String** | First name to use to create the child account |  |
| **last_name** | **String** | Last name to use to create the child account |  |
| **company_name** | **String** | Company name to use to create the child account |  |
| **password** | **String** | Password for the child account to login |  |
| **language** | **String** | Language of the child account | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::CreateChild.new(
  email: josh.cruise@example.com,
  first_name: Josh,
  last_name: Cruise,
  company_name: Your Company,
  password: Pa55w0rd65,
  language: en
)
```

