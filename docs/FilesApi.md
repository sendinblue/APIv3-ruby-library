# SibApiV3Sdk::FilesApi

All URIs are relative to *https://api.sendinblue.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**crm_files_get**](FilesApi.md#crm_files_get) | **GET** /crm/files | Get all files
[**crm_files_id_data_get**](FilesApi.md#crm_files_id_data_get) | **GET** /crm/files/{id}/data | Get file details
[**crm_files_id_delete**](FilesApi.md#crm_files_id_delete) | **DELETE** /crm/files/{id} | Delete a file
[**crm_files_id_get**](FilesApi.md#crm_files_id_get) | **GET** /crm/files/{id} | Download a file
[**crm_files_post**](FilesApi.md#crm_files_post) | **POST** /crm/files | Upload a file


# **crm_files_get**
> FileList crm_files_get(opts)

Get all files

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

api_instance = SibApiV3Sdk::FilesApi.new

opts = { 
  entity: 'entity_example', # String | Filter by file entity type
  entity_ids: 'entity_ids_example', # String | Filter by file entity IDs
  date_from: 56, # Integer | dateFrom to date range filter type (timestamp in milliseconds)
  date_to: 56, # Integer | dateTo to date range filter type (timestamp in milliseconds)
  offset: 789, # Integer | Index of the first document of the page
  limit: 50, # Integer | Number of documents per page
  sort: 'sort_example' # String | Sort the results in the ascending/descending order. Default order is **descending** by creation if `sort` is not passed
}

begin
  #Get all files
  result = api_instance.crm_files_get(opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling FilesApi->crm_files_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity** | **String**| Filter by file entity type | [optional] 
 **entity_ids** | **String**| Filter by file entity IDs | [optional] 
 **date_from** | **Integer**| dateFrom to date range filter type (timestamp in milliseconds) | [optional] 
 **date_to** | **Integer**| dateTo to date range filter type (timestamp in milliseconds) | [optional] 
 **offset** | **Integer**| Index of the first document of the page | [optional] 
 **limit** | **Integer**| Number of documents per page | [optional] [default to 50]
 **sort** | **String**| Sort the results in the ascending/descending order. Default order is **descending** by creation if &#x60;sort&#x60; is not passed | [optional] 

### Return type

[**FileList**](FileList.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **crm_files_id_data_get**
> FileData crm_files_id_data_get(id)

Get file details

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

api_instance = SibApiV3Sdk::FilesApi.new

id = 'id_example' # String | File id to get file data.


begin
  #Get file details
  result = api_instance.crm_files_id_data_get(id)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling FilesApi->crm_files_id_data_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| File id to get file data. | 

### Return type

[**FileData**](FileData.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **crm_files_id_delete**
> crm_files_id_delete(id)

Delete a file

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

api_instance = SibApiV3Sdk::FilesApi.new

id = 'id_example' # String | File id to delete.


begin
  #Delete a file
  api_instance.crm_files_id_delete(id)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling FilesApi->crm_files_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| File id to delete. | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **crm_files_id_get**
> FileDownloadableLink crm_files_id_get(id)

Download a file

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

api_instance = SibApiV3Sdk::FilesApi.new

id = 'id_example' # String | File id to download.


begin
  #Download a file
  result = api_instance.crm_files_id_get(id)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling FilesApi->crm_files_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| File id to download. | 

### Return type

[**FileDownloadableLink**](FileDownloadableLink.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **crm_files_post**
> FileData crm_files_post(file, opts)

Upload a file

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

api_instance = SibApiV3Sdk::FilesApi.new

file = File.new('/path/to/file.txt') # File | File data to create a file.

opts = { 
  deal_id: 'deal_id_example', # String | Deal id linked to a file
  contact_id: 789, # Integer | Contact id linked to a file
  company_id: 'company_id_example' # String | Company id linked to a file
}

begin
  #Upload a file
  result = api_instance.crm_files_post(file, opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling FilesApi->crm_files_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**| File data to create a file. | 
 **deal_id** | **String**| Deal id linked to a file | [optional] 
 **contact_id** | **Integer**| Contact id linked to a file | [optional] 
 **company_id** | **String**| Company id linked to a file | [optional] 

### Return type

[**FileData**](FileData.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



