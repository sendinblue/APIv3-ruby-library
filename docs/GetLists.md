# SibApiV3Sdk::GetLists

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lists** | [**Array&lt;GetList&gt;**](GetList.md) | Listing of all the lists available in your account | [optional] |
| **count** | **Integer** | Number of lists in your account | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetLists.new(
  lists: null,
  count: 150
)
```

