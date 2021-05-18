# SibApiV3Sdk::WebhooksApi

All URIs are relative to *https://api.sendinblue.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_webhook**](WebhooksApi.md#create_webhook) | **POST** /webhooks | Create a webhook |
| [**delete_webhook**](WebhooksApi.md#delete_webhook) | **DELETE** /webhooks/{webhookId} | Delete a webhook |
| [**get_webhook**](WebhooksApi.md#get_webhook) | **GET** /webhooks/{webhookId} | Get a webhook details |
| [**get_webhooks**](WebhooksApi.md#get_webhooks) | **GET** /webhooks | Get all webhooks |
| [**update_webhook**](WebhooksApi.md#update_webhook) | **PUT** /webhooks/{webhookId} | Update a webhook |


## create_webhook

> <CreateModel> create_webhook(create_webhook)

Create a webhook

### Examples

```ruby
require 'time'
require 'sib-api-v3-sdk'
# setup authorization
SibApiV3Sdk.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api-key'] = 'Bearer'

  # Configure API key authorization: partner-key
  config.api_key['partner-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['partner-key'] = 'Bearer'
end

api_instance = SibApiV3Sdk::WebhooksApi.new
create_webhook = SibApiV3Sdk::CreateWebhook.new({url: 'http://requestb.in/173lyyx1', events: ['sent']}) # CreateWebhook | Values to create a webhook

begin
  # Create a webhook
  result = api_instance.create_webhook(create_webhook)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling WebhooksApi->create_webhook: #{e}"
end
```

#### Using the create_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateModel>, Integer, Hash)> create_webhook_with_http_info(create_webhook)

```ruby
begin
  # Create a webhook
  data, status_code, headers = api_instance.create_webhook_with_http_info(create_webhook)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateModel>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling WebhooksApi->create_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_webhook** | [**CreateWebhook**](CreateWebhook.md) | Values to create a webhook |  |

### Return type

[**CreateModel**](CreateModel.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_webhook

> delete_webhook(webhook_id)

Delete a webhook

### Examples

```ruby
require 'time'
require 'sib-api-v3-sdk'
# setup authorization
SibApiV3Sdk.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api-key'] = 'Bearer'

  # Configure API key authorization: partner-key
  config.api_key['partner-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['partner-key'] = 'Bearer'
end

api_instance = SibApiV3Sdk::WebhooksApi.new
webhook_id = 789 # Integer | Id of the webhook

begin
  # Delete a webhook
  api_instance.delete_webhook(webhook_id)
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhook: #{e}"
end
```

#### Using the delete_webhook_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_webhook_with_http_info(webhook_id)

```ruby
begin
  # Delete a webhook
  data, status_code, headers = api_instance.delete_webhook_with_http_info(webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **Integer** | Id of the webhook |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhook

> <GetWebhook> get_webhook(webhook_id)

Get a webhook details

### Examples

```ruby
require 'time'
require 'sib-api-v3-sdk'
# setup authorization
SibApiV3Sdk.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api-key'] = 'Bearer'

  # Configure API key authorization: partner-key
  config.api_key['partner-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['partner-key'] = 'Bearer'
end

api_instance = SibApiV3Sdk::WebhooksApi.new
webhook_id = 789 # Integer | Id of the webhook

begin
  # Get a webhook details
  result = api_instance.get_webhook(webhook_id)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling WebhooksApi->get_webhook: #{e}"
end
```

#### Using the get_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWebhook>, Integer, Hash)> get_webhook_with_http_info(webhook_id)

```ruby
begin
  # Get a webhook details
  data, status_code, headers = api_instance.get_webhook_with_http_info(webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWebhook>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling WebhooksApi->get_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **Integer** | Id of the webhook |  |

### Return type

[**GetWebhook**](GetWebhook.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhooks

> <GetWebhooks> get_webhooks(opts)

Get all webhooks

### Examples

```ruby
require 'time'
require 'sib-api-v3-sdk'
# setup authorization
SibApiV3Sdk.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api-key'] = 'Bearer'

  # Configure API key authorization: partner-key
  config.api_key['partner-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['partner-key'] = 'Bearer'
end

api_instance = SibApiV3Sdk::WebhooksApi.new
opts = {
  type: 'marketing', # String | Filter on webhook type
  sort: 'asc' # String | Sort the results in the ascending/descending order of webhook creation
}

begin
  # Get all webhooks
  result = api_instance.get_webhooks(opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling WebhooksApi->get_webhooks: #{e}"
end
```

#### Using the get_webhooks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWebhooks>, Integer, Hash)> get_webhooks_with_http_info(opts)

```ruby
begin
  # Get all webhooks
  data, status_code, headers = api_instance.get_webhooks_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWebhooks>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling WebhooksApi->get_webhooks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Filter on webhook type | [optional][default to &#39;transactional&#39;] |
| **sort** | **String** | Sort the results in the ascending/descending order of webhook creation | [optional][default to &#39;desc&#39;] |

### Return type

[**GetWebhooks**](GetWebhooks.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_webhook

> update_webhook(webhook_id, update_webhook)

Update a webhook

### Examples

```ruby
require 'time'
require 'sib-api-v3-sdk'
# setup authorization
SibApiV3Sdk.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api-key'] = 'Bearer'

  # Configure API key authorization: partner-key
  config.api_key['partner-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['partner-key'] = 'Bearer'
end

api_instance = SibApiV3Sdk::WebhooksApi.new
webhook_id = 789 # Integer | Id of the webhook
update_webhook = SibApiV3Sdk::UpdateWebhook.new # UpdateWebhook | Values to update a webhook

begin
  # Update a webhook
  api_instance.update_webhook(webhook_id, update_webhook)
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling WebhooksApi->update_webhook: #{e}"
end
```

#### Using the update_webhook_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_webhook_with_http_info(webhook_id, update_webhook)

```ruby
begin
  # Update a webhook
  data, status_code, headers = api_instance.update_webhook_with_http_info(webhook_id, update_webhook)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling WebhooksApi->update_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **Integer** | Id of the webhook |  |
| **update_webhook** | [**UpdateWebhook**](UpdateWebhook.md) | Values to update a webhook |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

