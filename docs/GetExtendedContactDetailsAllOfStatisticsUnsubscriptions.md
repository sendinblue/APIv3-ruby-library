# SibApiV3Sdk::GetExtendedContactDetailsAllOfStatisticsUnsubscriptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_unsubscription** | [**Array&lt;GetExtendedContactDetailsAllOfStatisticsUnsubscriptionsUserUnsubscription&gt;**](GetExtendedContactDetailsAllOfStatisticsUnsubscriptionsUserUnsubscription.md) | Contact unsubscribe via unsubscription link in a campaign |  |
| **admin_unsubscription** | [**Array&lt;GetExtendedContactDetailsAllOfStatisticsUnsubscriptionsAdminUnsubscription&gt;**](GetExtendedContactDetailsAllOfStatisticsUnsubscriptionsAdminUnsubscription.md) | Contact has been unsubscribed from the administrator |  |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetExtendedContactDetailsAllOfStatisticsUnsubscriptions.new(
  user_unsubscription: null,
  admin_unsubscription: null
)
```

