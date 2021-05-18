# SibApiV3Sdk::GetSendersListSenders

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Id of the sender |  |
| **name** | **String** | From Name associated to the sender |  |
| **email** | **String** | From Email associated to the sender |  |
| **active** | **Boolean** | Status of sender (true&#x3D;activated, false&#x3D;deactivated) |  |
| **ips** | [**Array&lt;GetSendersListIps&gt;**](GetSendersListIps.md) | List of dedicated IP(s) available in the account. This data is displayed only for dedicated IPs | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetSendersListSenders.new(
  id: 0,
  name: Marketing,
  email: marketing@mycompany.com,
  active: false,
  ips: null
)
```

