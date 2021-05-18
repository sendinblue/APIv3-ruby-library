# SibApiV3Sdk::AttributesApi

All URIs are relative to *https://api.sendinblue.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_attribute**](AttributesApi.md#create_attribute) | **POST** /contacts/attributes/{attributeCategory}/{attributeName} | Create contact attribute |
| [**delete_attribute**](AttributesApi.md#delete_attribute) | **DELETE** /contacts/attributes/{attributeCategory}/{attributeName} | Delete an attribute |
| [**get_attributes**](AttributesApi.md#get_attributes) | **GET** /contacts/attributes | List all attributes |
| [**update_attribute**](AttributesApi.md#update_attribute) | **PUT** /contacts/attributes/{attributeCategory}/{attributeName} | Update contact attribute |


## create_attribute

> create_attribute(attribute_category, attribute_name, create_attribute)

Create contact attribute

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

api_instance = SibApiV3Sdk::AttributesApi.new
attribute_category = 'normal' # String | Category of the attribute
attribute_name = 'attribute_name_example' # String | Name of the attribute
create_attribute = SibApiV3Sdk::CreateAttribute.new # CreateAttribute | Values to create an attribute

begin
  # Create contact attribute
  api_instance.create_attribute(attribute_category, attribute_name, create_attribute)
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling AttributesApi->create_attribute: #{e}"
end
```

#### Using the create_attribute_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_attribute_with_http_info(attribute_category, attribute_name, create_attribute)

```ruby
begin
  # Create contact attribute
  data, status_code, headers = api_instance.create_attribute_with_http_info(attribute_category, attribute_name, create_attribute)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling AttributesApi->create_attribute_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attribute_category** | **String** | Category of the attribute |  |
| **attribute_name** | **String** | Name of the attribute |  |
| **create_attribute** | [**CreateAttribute**](CreateAttribute.md) | Values to create an attribute |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_attribute

> delete_attribute(attribute_category, attribute_name)

Delete an attribute

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

api_instance = SibApiV3Sdk::AttributesApi.new
attribute_category = 'normal' # String | Category of the attribute
attribute_name = 'attribute_name_example' # String | Name of the existing attribute

begin
  # Delete an attribute
  api_instance.delete_attribute(attribute_category, attribute_name)
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling AttributesApi->delete_attribute: #{e}"
end
```

#### Using the delete_attribute_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_attribute_with_http_info(attribute_category, attribute_name)

```ruby
begin
  # Delete an attribute
  data, status_code, headers = api_instance.delete_attribute_with_http_info(attribute_category, attribute_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling AttributesApi->delete_attribute_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attribute_category** | **String** | Category of the attribute |  |
| **attribute_name** | **String** | Name of the existing attribute |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_attributes

> <GetAttributes> get_attributes

List all attributes

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

api_instance = SibApiV3Sdk::AttributesApi.new

begin
  # List all attributes
  result = api_instance.get_attributes
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling AttributesApi->get_attributes: #{e}"
end
```

#### Using the get_attributes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAttributes>, Integer, Hash)> get_attributes_with_http_info

```ruby
begin
  # List all attributes
  data, status_code, headers = api_instance.get_attributes_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAttributes>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling AttributesApi->get_attributes_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetAttributes**](GetAttributes.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_attribute

> update_attribute(attribute_category, attribute_name, update_attribute)

Update contact attribute

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

api_instance = SibApiV3Sdk::AttributesApi.new
attribute_category = 'category' # String | Category of the attribute
attribute_name = 'attribute_name_example' # String | Name of the existing attribute
update_attribute = SibApiV3Sdk::UpdateAttribute.new # UpdateAttribute | Values to update an attribute

begin
  # Update contact attribute
  api_instance.update_attribute(attribute_category, attribute_name, update_attribute)
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling AttributesApi->update_attribute: #{e}"
end
```

#### Using the update_attribute_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_attribute_with_http_info(attribute_category, attribute_name, update_attribute)

```ruby
begin
  # Update contact attribute
  data, status_code, headers = api_instance.update_attribute_with_http_info(attribute_category, attribute_name, update_attribute)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling AttributesApi->update_attribute_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attribute_category** | **String** | Category of the attribute |  |
| **attribute_name** | **String** | Name of the existing attribute |  |
| **update_attribute** | [**UpdateAttribute**](UpdateAttribute.md) | Values to update an attribute |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

