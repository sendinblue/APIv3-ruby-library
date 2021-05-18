# SibApiV3Sdk::GetAccountAllOfPlan

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Displays the plan type of the user |  |
| **credits_type** | **String** | This is the type of the credit, \&quot;Send Limit\&quot; is one of the possible types of credit of a user. \&quot;Send Limit\&quot; implies the total number of emails you can send to the subscribers in your account. |  |
| **credits** | **Float** | Remaining credits of the user |  |
| **start_date** | **Date** | Date of the period from which the plan will start (only available for \&quot;subscription\&quot; and \&quot;reseller\&quot; plan type) | [optional] |
| **end_date** | **Date** | Date of the period from which the plan will end (only available for \&quot;subscription\&quot; and \&quot;reseller\&quot; plan type) | [optional] |
| **user_limit** | **Integer** | Only in case of reseller account. It implies the total number of child accounts you can add to your account. | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetAccountAllOfPlan.new(
  type: subscription,
  credits_type: sendLimit,
  credits: 8755.0,
  start_date: Sat Dec 31 05:30:00 IST 2016,
  end_date: Tue Jan 31 05:30:00 IST 2017,
  user_limit: 10
)
```

