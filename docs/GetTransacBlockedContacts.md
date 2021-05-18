# SibApiV3Sdk::GetTransacBlockedContacts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | Count of blocked or unsubscribed contact | [optional] |
| **contacts** | [**Array&lt;GetTransacBlockedContactsContacts&gt;**](GetTransacBlockedContactsContacts.md) |  | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetTransacBlockedContacts.new(
  count: 1,
  contacts: null
)
```

