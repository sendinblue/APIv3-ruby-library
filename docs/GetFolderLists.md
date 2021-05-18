# SibApiV3Sdk::GetFolderLists

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lists** | [**Array&lt;GetList&gt;**](GetList.md) |  | [optional] |
| **count** | **Integer** | Number of lists in the folder | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetFolderLists.new(
  lists: null,
  count: 6
)
```

