# SibApiV3Sdk::GetContacts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contacts** | [**Array&lt;GetContactDetails&gt;**](GetContactDetails.md) |  |  |
| **count** | **Integer** | Number of contacts |  |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetContacts.new(
  contacts: null,
  count: 17655
)
```

