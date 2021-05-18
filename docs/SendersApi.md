# SibApiV3Sdk::SendersApi

All URIs are relative to *https://api.sendinblue.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_sender**](SendersApi.md#create_sender) | **POST** /senders | Create a new sender |
| [**delete_sender**](SendersApi.md#delete_sender) | **DELETE** /senders/{senderId} | Delete a sender |
| [**get_ips**](SendersApi.md#get_ips) | **GET** /senders/ips | Get all the dedicated IPs for your account |
| [**get_ips_from_sender**](SendersApi.md#get_ips_from_sender) | **GET** /senders/{senderId}/ips | Get all the dedicated IPs for a sender |
| [**get_senders**](SendersApi.md#get_senders) | **GET** /senders | Get the list of all your senders |
| [**update_sender**](SendersApi.md#update_sender) | **PUT** /senders/{senderId} | Update a sender |


## create_sender

> <CreateSenderModel> create_sender(opts)

Create a new sender

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

api_instance = SibApiV3Sdk::SendersApi.new
opts = {
  sender: SibApiV3Sdk::CreateSender.new({name: 'Newsletter', email: 'newsletter@mycompany.com'}) # CreateSender | sender's name
}

begin
  # Create a new sender
  result = api_instance.create_sender(opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling SendersApi->create_sender: #{e}"
end
```

#### Using the create_sender_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSenderModel>, Integer, Hash)> create_sender_with_http_info(opts)

```ruby
begin
  # Create a new sender
  data, status_code, headers = api_instance.create_sender_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSenderModel>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling SendersApi->create_sender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender** | [**CreateSender**](CreateSender.md) | sender&#39;s name | [optional] |

### Return type

[**CreateSenderModel**](CreateSenderModel.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_sender

> delete_sender(sender_id)

Delete a sender

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

api_instance = SibApiV3Sdk::SendersApi.new
sender_id = 789 # Integer | Id of the sender

begin
  # Delete a sender
  api_instance.delete_sender(sender_id)
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling SendersApi->delete_sender: #{e}"
end
```

#### Using the delete_sender_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_sender_with_http_info(sender_id)

```ruby
begin
  # Delete a sender
  data, status_code, headers = api_instance.delete_sender_with_http_info(sender_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling SendersApi->delete_sender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender_id** | **Integer** | Id of the sender |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ips

> <GetIps> get_ips

Get all the dedicated IPs for your account

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

api_instance = SibApiV3Sdk::SendersApi.new

begin
  # Get all the dedicated IPs for your account
  result = api_instance.get_ips
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling SendersApi->get_ips: #{e}"
end
```

#### Using the get_ips_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIps>, Integer, Hash)> get_ips_with_http_info

```ruby
begin
  # Get all the dedicated IPs for your account
  data, status_code, headers = api_instance.get_ips_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIps>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling SendersApi->get_ips_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetIps**](GetIps.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ips_from_sender

> <GetIpsFromSender> get_ips_from_sender(sender_id)

Get all the dedicated IPs for a sender

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

api_instance = SibApiV3Sdk::SendersApi.new
sender_id = 789 # Integer | Id of the sender

begin
  # Get all the dedicated IPs for a sender
  result = api_instance.get_ips_from_sender(sender_id)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling SendersApi->get_ips_from_sender: #{e}"
end
```

#### Using the get_ips_from_sender_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIpsFromSender>, Integer, Hash)> get_ips_from_sender_with_http_info(sender_id)

```ruby
begin
  # Get all the dedicated IPs for a sender
  data, status_code, headers = api_instance.get_ips_from_sender_with_http_info(sender_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIpsFromSender>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling SendersApi->get_ips_from_sender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender_id** | **Integer** | Id of the sender |  |

### Return type

[**GetIpsFromSender**](GetIpsFromSender.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_senders

> <GetSendersList> get_senders(opts)

Get the list of all your senders

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

api_instance = SibApiV3Sdk::SendersApi.new
opts = {
  ip: 'ip_example', # String | Filter your senders for a specific ip (available for dedicated IP usage only)
  domain: 'domain_example' # String | Filter your senders for a specific domain
}

begin
  # Get the list of all your senders
  result = api_instance.get_senders(opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling SendersApi->get_senders: #{e}"
end
```

#### Using the get_senders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSendersList>, Integer, Hash)> get_senders_with_http_info(opts)

```ruby
begin
  # Get the list of all your senders
  data, status_code, headers = api_instance.get_senders_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSendersList>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling SendersApi->get_senders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ip** | **String** | Filter your senders for a specific ip (available for dedicated IP usage only) | [optional] |
| **domain** | **String** | Filter your senders for a specific domain | [optional] |

### Return type

[**GetSendersList**](GetSendersList.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_sender

> update_sender(sender_id, opts)

Update a sender

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

api_instance = SibApiV3Sdk::SendersApi.new
sender_id = 789 # Integer | Id of the sender
opts = {
  sender: SibApiV3Sdk::UpdateSender.new # UpdateSender | sender's name
}

begin
  # Update a sender
  api_instance.update_sender(sender_id, opts)
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling SendersApi->update_sender: #{e}"
end
```

#### Using the update_sender_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_sender_with_http_info(sender_id, opts)

```ruby
begin
  # Update a sender
  data, status_code, headers = api_instance.update_sender_with_http_info(sender_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling SendersApi->update_sender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender_id** | **Integer** | Id of the sender |  |
| **sender** | [**UpdateSender**](UpdateSender.md) | sender&#39;s name | [optional] |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

