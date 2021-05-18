# SibApiV3Sdk::GetChildAccountCreationStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **child_account_created** | **Boolean** | Status of child account creation whether it is successfully created (exists) or not. |  |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetChildAccountCreationStatus.new(
  child_account_created: true
)
```

