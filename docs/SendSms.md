# SibApiV3Sdk::SendSms

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reference** | **String** |  |  |
| **message_id** | **Integer** |  |  |
| **sms_count** | **Integer** | Count of SMS&#39;s to send multiple text messages | [optional] |
| **used_credits** | **Float** | SMS credits used per text message | [optional] |
| **remaining_credits** | **Float** | Remaining SMS credits of the user | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::SendSms.new(
  reference: ab1cde2fgh3i4jklmno,
  message_id: 1511882900176220,
  sms_count: 2,
  used_credits: 0.7,
  remaining_credits: 82.85
)
```

