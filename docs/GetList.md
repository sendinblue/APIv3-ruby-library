# SibApiV3Sdk::GetList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ID of the list |  |
| **name** | **String** | Name of the list |  |
| **total_blacklisted** | **Integer** | Number of blacklisted contacts in the list |  |
| **total_subscribers** | **Integer** | Number of contacts in the list |  |
| **unique_subscribers** | **Integer** | Number of unique contacts in the list |  |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetList.new(
  id: 23,
  name: Magento Customers - EN,
  total_blacklisted: 13,
  total_subscribers: 1776,
  unique_subscribers: 1789
)
```

