# SibApiV3Sdk::GetChildDomain

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** | Sender domain | [optional] |
| **active** | **Boolean** | indicates whether a domain is verified or not | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetChildDomain.new(
  domain: mycustomdomain.com,
  active: true
)
```

