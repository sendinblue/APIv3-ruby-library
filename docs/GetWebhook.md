# SibApiV3Sdk::GetWebhook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | URL of the webhook |  |
| **id** | **Integer** | ID of the webhook |  |
| **description** | **String** | Description of the webhook |  |
| **events** | **Array&lt;String&gt;** |  |  |
| **type** | **String** | Type of webhook (marketing or transac) |  |
| **created_at** | **String** | Creation UTC date-time of the webhook (YYYY-MM-DDTHH:mm:ss.SSSZ) |  |
| **modified_at** | **String** | Last modification UTC date-time of the webhook (YYYY-MM-DDTHH:mm:ss.SSSZ) |  |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetWebhook.new(
  url: http://requestb.in/173lyyx1,
  id: 654,
  description: Webhook triggered on campaign openings,
  events: null,
  type: marketing,
  created_at: 2016-12-01T12:50:00Z,
  modified_at: 2017-05-12T13:15:00Z
)
```

