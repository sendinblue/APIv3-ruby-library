# SibApiV3Sdk::GetAttributesAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the attribute |  |
| **category** | **String** | Category of the attribute |  |
| **type** | **String** | Type of the attribute | [optional] |
| **enumeration** | [**Array&lt;GetAttributesEnumeration&gt;**](GetAttributesEnumeration.md) | Parameter only available for \&quot;category\&quot; type attributes. | [optional] |
| **calculated_value** | **String** | Calculated value formula | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetAttributesAttributes.new(
  name: LASTNAME,
  category: category,
  type: text,
  enumeration: null,
  calculated_value: COUNT[ORDER_ID,ORDER_DATE,&#x3D;&#x3D;,NOW(-1)]
)
```

