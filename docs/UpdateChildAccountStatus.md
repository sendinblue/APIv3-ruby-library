# SibApiV3Sdk::UpdateChildAccountStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transactional_email** | **Boolean** | Status of Transactional Email Platform activation for your account (true&#x3D;enabled, false&#x3D;disabled) | [optional] |
| **transactional_sms** | **Boolean** | Status of Transactional SMS Platform activation for your account (true&#x3D;enabled, false&#x3D;disabled) | [optional] |
| **marketing_automation** | **Boolean** | Status of Marketing Automation Platform activation for your account (true&#x3D;enabled, false&#x3D;disabled) | [optional] |
| **sms_campaign** | **Boolean** | Status of SMS Campaign Platform activation for your account (true&#x3D;enabled, false&#x3D;disabled) | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::UpdateChildAccountStatus.new(
  transactional_email: false,
  transactional_sms: false,
  marketing_automation: true,
  sms_campaign: true
)
```

