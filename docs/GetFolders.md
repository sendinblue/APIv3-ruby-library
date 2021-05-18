# SibApiV3Sdk::GetFolders

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folders** | [**Array&lt;GetFolder&gt;**](GetFolder.md) |  | [optional] |
| **count** | **Integer** | Number of folders available in your account | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetFolders.new(
  folders: null,
  count: 10
)
```

