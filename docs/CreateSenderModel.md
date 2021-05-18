# SibApiV3Sdk::CreateSenderModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ID of the Sender created |  |
| **spf_error** | **Boolean** | Status of SPF configuration for the sender (true &#x3D; SPF not well configured, false &#x3D; SPF well configured) | [optional] |
| **dkim_error** | **Boolean** | Status of DKIM configuration for the sender (true &#x3D; DKIM not well configured, false &#x3D; DKIM well configured) | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::CreateSenderModel.new(
  id: 5,
  spf_error: true,
  dkim_error: false
)
```

