# SibApiV3Sdk::DealsApi

All URIs are relative to *https://api.sendinblue.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**crm_attributes_deals_get**](DealsApi.md#crm_attributes_deals_get) | **GET** /crm/attributes/deals | Get deal attributes
[**crm_deals_get**](DealsApi.md#crm_deals_get) | **GET** /crm/deals | Get all deals
[**crm_deals_id_delete**](DealsApi.md#crm_deals_id_delete) | **DELETE** /crm/deals/{id} | Delete a deal
[**crm_deals_id_get**](DealsApi.md#crm_deals_id_get) | **GET** /crm/deals/{id} | Get a deal
[**crm_deals_id_patch**](DealsApi.md#crm_deals_id_patch) | **PATCH** /crm/deals/{id} | Update a deal
[**crm_deals_link_unlink_id_patch**](DealsApi.md#crm_deals_link_unlink_id_patch) | **PATCH** /crm/deals/link-unlink/{id} | Link and Unlink a deal with contacts and companies
[**crm_deals_post**](DealsApi.md#crm_deals_post) | **POST** /crm/deals | Create a deal
[**crm_pipeline_details_get**](DealsApi.md#crm_pipeline_details_get) | **GET** /crm/pipeline/details | Get pipeline stages


# **crm_attributes_deals_get**
> DealAttributes crm_attributes_deals_get

Get deal attributes

### Example
```ruby
# load the gem
require 'sib-api-v3-sdk'
# setup authorization
SibApiV3Sdk.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'

  # Configure API key authorization: partner-key
  config.api_key['partner-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['partner-key'] = 'Bearer'
end

api_instance = SibApiV3Sdk::DealsApi.new

begin
  #Get deal attributes
  result = api_instance.crm_attributes_deals_get
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling DealsApi->crm_attributes_deals_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DealAttributes**](DealAttributes.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **crm_deals_get**
> DealsList crm_deals_get(opts)

Get all deals

### Example
```ruby
# load the gem
require 'sib-api-v3-sdk'
# setup authorization
SibApiV3Sdk.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'

  # Configure API key authorization: partner-key
  config.api_key['partner-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['partner-key'] = 'Bearer'
end

api_instance = SibApiV3Sdk::DealsApi.new

opts = { 
  filter_attributes: 'filter_attributes_example', # String | Filter by attrbutes. If you have filter for owner on your side please send it as `attributes.owner`.\"
  filter_linked_companies_ids: 'filter_linked_companies_ids_example', # String | Filter by linked companies ids
  filter_linked_contacts_ids: 'filter_linked_contacts_ids_example', # String | Filter by linked companies ids
  offset: 789, # Integer | Index of the first document of the page
  limit: 50, # Integer | Number of documents per page
  sort: 'sort_example', # String | Sort the results in the ascending/descending order. Default order is **descending** by creation if `sort` is not passed
  sort_by: 'sort_by_example' # String | The field used to sort field names.
}

begin
  #Get all deals
  result = api_instance.crm_deals_get(opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling DealsApi->crm_deals_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_attributes** | **String**| Filter by attrbutes. If you have filter for owner on your side please send it as &#x60;attributes.owner&#x60;.\&quot; | [optional] 
 **filter_linked_companies_ids** | **String**| Filter by linked companies ids | [optional] 
 **filter_linked_contacts_ids** | **String**| Filter by linked companies ids | [optional] 
 **offset** | **Integer**| Index of the first document of the page | [optional] 
 **limit** | **Integer**| Number of documents per page | [optional] [default to 50]
 **sort** | **String**| Sort the results in the ascending/descending order. Default order is **descending** by creation if &#x60;sort&#x60; is not passed | [optional] 
 **sort_by** | **String**| The field used to sort field names. | [optional] 

### Return type

[**DealsList**](DealsList.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **crm_deals_id_delete**
> crm_deals_id_delete(id)

Delete a deal

### Example
```ruby
# load the gem
require 'sib-api-v3-sdk'
# setup authorization
SibApiV3Sdk.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'

  # Configure API key authorization: partner-key
  config.api_key['partner-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['partner-key'] = 'Bearer'
end

api_instance = SibApiV3Sdk::DealsApi.new

id = 'id_example' # String | 


begin
  #Delete a deal
  api_instance.crm_deals_id_delete(id)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling DealsApi->crm_deals_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **crm_deals_id_get**
> Deal crm_deals_id_get(id)

Get a deal

### Example
```ruby
# load the gem
require 'sib-api-v3-sdk'
# setup authorization
SibApiV3Sdk.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'

  # Configure API key authorization: partner-key
  config.api_key['partner-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['partner-key'] = 'Bearer'
end

api_instance = SibApiV3Sdk::DealsApi.new

id = 'id_example' # String | 


begin
  #Get a deal
  result = api_instance.crm_deals_id_get(id)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling DealsApi->crm_deals_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Deal**](Deal.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **crm_deals_id_patch**
> crm_deals_id_patch(id, body)

Update a deal

### Example
```ruby
# load the gem
require 'sib-api-v3-sdk'
# setup authorization
SibApiV3Sdk.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'

  # Configure API key authorization: partner-key
  config.api_key['partner-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['partner-key'] = 'Bearer'
end

api_instance = SibApiV3Sdk::DealsApi.new

id = 'id_example' # String | 

body = SibApiV3Sdk::Body4.new # Body4 | Updated deal details.


begin
  #Update a deal
  api_instance.crm_deals_id_patch(id, body)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling DealsApi->crm_deals_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **body** | [**Body4**](Body4.md)| Updated deal details. | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **crm_deals_link_unlink_id_patch**
> crm_deals_link_unlink_id_patch(id, body)

Link and Unlink a deal with contacts and companies

### Example
```ruby
# load the gem
require 'sib-api-v3-sdk'
# setup authorization
SibApiV3Sdk.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'

  # Configure API key authorization: partner-key
  config.api_key['partner-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['partner-key'] = 'Bearer'
end

api_instance = SibApiV3Sdk::DealsApi.new

id = 'id_example' # String | 

body = SibApiV3Sdk::Body5.new # Body5 | Linked / Unlinked contacts and companies ids.


begin
  #Link and Unlink a deal with contacts and companies
  api_instance.crm_deals_link_unlink_id_patch(id, body)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling DealsApi->crm_deals_link_unlink_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **body** | [**Body5**](Body5.md)| Linked / Unlinked contacts and companies ids. | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **crm_deals_post**
> InlineResponse201 crm_deals_post(body)

Create a deal

### Example
```ruby
# load the gem
require 'sib-api-v3-sdk'
# setup authorization
SibApiV3Sdk.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'

  # Configure API key authorization: partner-key
  config.api_key['partner-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['partner-key'] = 'Bearer'
end

api_instance = SibApiV3Sdk::DealsApi.new

body = SibApiV3Sdk::Body3.new # Body3 | Deal create data.


begin
  #Create a deal
  result = api_instance.crm_deals_post(body)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling DealsApi->crm_deals_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body3**](Body3.md)| Deal create data. | 

### Return type

[**InlineResponse201**](InlineResponse201.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **crm_pipeline_details_get**
> Pipeline crm_pipeline_details_get

Get pipeline stages

### Example
```ruby
# load the gem
require 'sib-api-v3-sdk'
# setup authorization
SibApiV3Sdk.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'

  # Configure API key authorization: partner-key
  config.api_key['partner-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['partner-key'] = 'Bearer'
end

api_instance = SibApiV3Sdk::DealsApi.new

begin
  #Get pipeline stages
  result = api_instance.crm_pipeline_details_get
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling DealsApi->crm_pipeline_details_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Pipeline**](Pipeline.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



