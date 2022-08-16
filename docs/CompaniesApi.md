# SibApiV3Sdk::CompaniesApi

All URIs are relative to *https://api.sendinblue.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**companies_attributes_get**](CompaniesApi.md#companies_attributes_get) | **GET** /companies/attributes | Get company attributes
[**companies_get**](CompaniesApi.md#companies_get) | **GET** /companies | Get all companies
[**companies_id_delete**](CompaniesApi.md#companies_id_delete) | **DELETE** /companies/{id} | Delete a company
[**companies_id_get**](CompaniesApi.md#companies_id_get) | **GET** /companies/{id} | Get a company
[**companies_id_patch**](CompaniesApi.md#companies_id_patch) | **PATCH** /companies/{id} | Update a company
[**companies_link_unlink_id_patch**](CompaniesApi.md#companies_link_unlink_id_patch) | **PATCH** /companies/link-unlink/{id} | Link and Unlink company with contacts and deals
[**companies_post**](CompaniesApi.md#companies_post) | **POST** /companies | Create a company


# **companies_attributes_get**
> CompanyAttributes companies_attributes_get

Get company attributes

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

api_instance = SibApiV3Sdk::CompaniesApi.new

begin
  #Get company attributes
  result = api_instance.companies_attributes_get
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling CompaniesApi->companies_attributes_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CompanyAttributes**](CompanyAttributes.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **companies_get**
> CompaniesList companies_get(opts)

Get all companies

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

api_instance = SibApiV3Sdk::CompaniesApi.new

opts = { 
  filters: 'filters_example', # String | Filter by attrbutes. If you have filter for owner on your side please send it as {\"attributes.owner\":\"5b1a17d914b73d35a76ca0c7\"}
  linked_contacts_ids: 789, # Integer | Filter by linked contacts ids
  linked_deals_ids: 'linked_deals_ids_example', # String | Filter by linked deals ids
  page: 789, # Integer | Index of the first document of the page
  limit: 50, # Integer | Number of documents per page
  sort: 'sort_example', # String | Sort the results in the ascending/descending order. Default order is **descending** by creation if `sort` is not passed
  sort_by: 'sort_by_example' # String | The field used to sort field names.
}

begin
  #Get all companies
  result = api_instance.companies_get(opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling CompaniesApi->companies_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String**| Filter by attrbutes. If you have filter for owner on your side please send it as {\&quot;attributes.owner\&quot;:\&quot;5b1a17d914b73d35a76ca0c7\&quot;} | [optional] 
 **linked_contacts_ids** | **Integer**| Filter by linked contacts ids | [optional] 
 **linked_deals_ids** | **String**| Filter by linked deals ids | [optional] 
 **page** | **Integer**| Index of the first document of the page | [optional] 
 **limit** | **Integer**| Number of documents per page | [optional] [default to 50]
 **sort** | **String**| Sort the results in the ascending/descending order. Default order is **descending** by creation if &#x60;sort&#x60; is not passed | [optional] 
 **sort_by** | **String**| The field used to sort field names. | [optional] 

### Return type

[**CompaniesList**](CompaniesList.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **companies_id_delete**
> companies_id_delete(id)

Delete a company

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

api_instance = SibApiV3Sdk::CompaniesApi.new

id = 'id_example' # String | 


begin
  #Delete a company
  api_instance.companies_id_delete(id)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling CompaniesApi->companies_id_delete: #{e}"
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



# **companies_id_get**
> Company companies_id_get(id)

Get a company

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

api_instance = SibApiV3Sdk::CompaniesApi.new

id = 'id_example' # String | 


begin
  #Get a company
  result = api_instance.companies_id_get(id)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling CompaniesApi->companies_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Company**](Company.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **companies_id_patch**
> Company companies_id_patch(id, body)

Update a company

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

api_instance = SibApiV3Sdk::CompaniesApi.new

id = 'id_example' # String | 

body = SibApiV3Sdk::Body1.new # Body1 | Updated company details.


begin
  #Update a company
  result = api_instance.companies_id_patch(id, body)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling CompaniesApi->companies_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **body** | [**Body1**](Body1.md)| Updated company details. | 

### Return type

[**Company**](Company.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **companies_link_unlink_id_patch**
> companies_link_unlink_id_patch(id, body)

Link and Unlink company with contacts and deals

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

api_instance = SibApiV3Sdk::CompaniesApi.new

id = 'id_example' # String | 

body = SibApiV3Sdk::Body2.new # Body2 | Linked / Unlinked contacts and deals ids.


begin
  #Link and Unlink company with contacts and deals
  api_instance.companies_link_unlink_id_patch(id, body)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling CompaniesApi->companies_link_unlink_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **body** | [**Body2**](Body2.md)| Linked / Unlinked contacts and deals ids. | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **companies_post**
> InlineResponse200 companies_post(body)

Create a company

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

api_instance = SibApiV3Sdk::CompaniesApi.new

body = SibApiV3Sdk::Body.new # Body | Company create data.


begin
  #Create a company
  result = api_instance.companies_post(body)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling CompaniesApi->companies_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](Body.md)| Company create data. | 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



