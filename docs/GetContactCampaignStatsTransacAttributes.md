# SibApiV3Sdk::GetContactCampaignStatsTransacAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_date** | **Date** | Date of the order |  |
| **order_price** | **Float** | Price of the order |  |
| **order_id** | **Integer** | ID of the order |  |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetContactCampaignStatsTransacAttributes.new(
  order_date: Sun Mar 12 05:30:00 IST 2017,
  order_price: 24.99,
  order_id: 248
)
```

