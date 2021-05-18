# SibApiV3Sdk::CreateSmtpEmail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_id** | **String** | Message ID of the transactional email sent | [optional] |
| **message_ids** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::CreateSmtpEmail.new(
  message_id: &lt;201798300811.5787683@relay.domain.com&gt;,
  message_ids: null
)
```

