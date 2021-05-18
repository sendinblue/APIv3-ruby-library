# SibApiV3Sdk::UpdateChild

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | New Email address to update the child account | [optional] |
| **first_name** | **String** | New First name to use to update the child account | [optional] |
| **last_name** | **String** | New Last name to use to update the child account | [optional] |
| **company_name** | **String** | New Company name to use to update the child account | [optional] |
| **password** | **String** | New password for the child account to login | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::UpdateChild.new(
  email: josh.cruise@example.com,
  first_name: Josh,
  last_name: Cruise,
  company_name: Your Company,
  password: Pa55w0rd65
)
```

