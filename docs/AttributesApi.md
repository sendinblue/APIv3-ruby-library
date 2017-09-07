# SendinblueApiv3::AttributesApi

All URIs are relative to *https://api.sendinblue.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_attribute**](AttributesApi.md#create_attribute) | **POST** /contacts/attributes | Creates contact attributes
[**delete_attribute**](AttributesApi.md#delete_attribute) | **DELETE** /contacts/attributes/{attributeId} | Deletes an attribute
[**get_attributes**](AttributesApi.md#get_attributes) | **GET** /contacts/attributes | Lists all attributes


# **create_attribute**
> CreateModel create_attribute(create_attribute)

Creates contact attributes

### Example
```ruby
# load the gem
require 'sendinblue-apiv3'
# setup authorization
SendinblueApiv3.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = SendinblueApiv3::AttributesApi.new

create_attribute = SendinblueApiv3::CreateAttribute.new # CreateAttribute | Values to create an attribute


begin
  #Creates contact attributes
  result = api_instance.create_attribute(create_attribute)
  p result
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling AttributesApi->create_attribute: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_attribute** | [**CreateAttribute**](CreateAttribute.md)| Values to create an attribute | 

### Return type

[**CreateModel**](CreateModel.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_attribute**
> delete_attribute(attribute_id)

Deletes an attribute

### Example
```ruby
# load the gem
require 'sendinblue-apiv3'
# setup authorization
SendinblueApiv3.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = SendinblueApiv3::AttributesApi.new

attribute_id = "attribute_id_example" # String | id of the attribute


begin
  #Deletes an attribute
  api_instance.delete_attribute(attribute_id)
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling AttributesApi->delete_attribute: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attribute_id** | **String**| id of the attribute | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_attributes**
> GetAttributes get_attributes

Lists all attributes

### Example
```ruby
# load the gem
require 'sendinblue-apiv3'
# setup authorization
SendinblueApiv3.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = SendinblueApiv3::AttributesApi.new

begin
  #Lists all attributes
  result = api_instance.get_attributes
  p result
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling AttributesApi->get_attributes: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetAttributes**](GetAttributes.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



