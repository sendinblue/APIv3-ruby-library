# SibApiV3Sdk::RequestContactImportNewList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_name** | **String** | List with listName will be created first and users will be imported in it (Mandatory if listIds is empty). | [optional] |
| **folder_id** | **Integer** | Id of the folder where this new list shall be created (Mandatory if listName is not empty). | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::RequestContactImportNewList.new(
  list_name: ContactImport - 2017-05,
  folder_id: 2
)
```

