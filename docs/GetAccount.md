# SibApiV3Sdk::GetAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Login Email |  |
| **first_name** | **String** | First Name |  |
| **last_name** | **String** | Last Name |  |
| **company_name** | **String** | Name of the company |  |
| **address** | [**GetExtendedClientAllOfAddress**](GetExtendedClientAllOfAddress.md) |  |  |
| **plan** | [**Array&lt;GetAccountAllOfPlan&gt;**](GetAccountAllOfPlan.md) | Information about your plans and credits |  |
| **relay** | [**GetAccountAllOfRelay**](GetAccountAllOfRelay.md) |  |  |
| **marketing_automation** | [**GetAccountAllOfMarketingAutomation**](GetAccountAllOfMarketingAutomation.md) |  | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetAccount.new(
  email: john.smith@example.com,
  first_name: John,
  last_name: Smith,
  company_name: MyCompany,
  address: null,
  plan: null,
  relay: null,
  marketing_automation: null
)
```

