# SibApiV3Sdk::GetChildrenList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **children** | [**Array&lt;GetChildInfo&gt;**](GetChildInfo.md) | Your children&#39;s account information | [optional] |
| **count** | **Integer** | Number of child accounts | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetChildrenList.new(
  children: null,
  count: 24
)
```

