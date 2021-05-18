# SibApiV3Sdk::CreateSender

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | From Name to use for the sender |  |
| **email** | **String** | From email to use for the sender. A verification email will be sent to this address. |  |
| **ips** | [**Array&lt;CreateSenderIps&gt;**](CreateSenderIps.md) | Mandatory in case of dedicated IP, IPs to associate to the sender | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::CreateSender.new(
  name: Newsletter,
  email: newsletter@mycompany.com,
  ips: null
)
```

