# SibApiV3Sdk::GetFolder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ID of the folder |  |
| **name** | **String** | Name of the folder |  |
| **total_blacklisted** | **Integer** | Number of blacklisted contacts in the folder |  |
| **total_subscribers** | **Integer** | Number of contacts in the folder |  |
| **unique_subscribers** | **Integer** | Number of unique contacts in the folder |  |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetFolder.new(
  id: 2,
  name: Magento Customers,
  total_blacklisted: 32,
  total_subscribers: 19777,
  unique_subscribers: 16222
)
```

