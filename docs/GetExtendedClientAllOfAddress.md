# SibApiV3Sdk::GetExtendedClientAllOfAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **street** | **String** | Street information |  |
| **city** | **String** | City information |  |
| **zip_code** | **String** | Zip Code information |  |
| **country** | **String** | Country information |  |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetExtendedClientAllOfAddress.new(
  street: 47 Harbour Street,
  city: New-York,
  zip_code: 9867,
  country: United States of America
)
```

