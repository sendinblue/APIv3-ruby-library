# SibApiV3Sdk::PostContactInfoContacts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Array&lt;String&gt;** |  | [optional] |
| **failure** | **Array&lt;String&gt;** |  | [optional] |
| **total** | **Integer** | Displays the count of total number of contacts removed from list when user opts for \&quot;all\&quot; option. | [optional] |
| **process_id** | **Integer** | Id of the process created to remove contacts from list when user opts for \&quot;all\&quot; option. | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::PostContactInfoContacts.new(
  success: null,
  failure: null,
  total: 27,
  process_id: 78
)
```

