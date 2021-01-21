# SibApiV3Sdk::FoldersApi

All URIs are relative to *https://api.sendinblue.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_folder**](FoldersApi.md#create_folder) | **POST** /contacts/folders | Create a folder
[**delete_folder**](FoldersApi.md#delete_folder) | **DELETE** /contacts/folders/{folderId} | Delete a folder (and all its lists)
[**get_folder**](FoldersApi.md#get_folder) | **GET** /contacts/folders/{folderId} | Returns a folder&#39;s details
[**get_folder_lists**](FoldersApi.md#get_folder_lists) | **GET** /contacts/folders/{folderId}/lists | Get lists in a folder
[**get_folders**](FoldersApi.md#get_folders) | **GET** /contacts/folders | Get all folders
[**update_folder**](FoldersApi.md#update_folder) | **PUT** /contacts/folders/{folderId} | Update a folder


# **create_folder**
> CreateModel create_folder(create_folder)

Create a folder

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

api_instance = SibApiV3Sdk::FoldersApi.new

create_folder = SibApiV3Sdk::CreateUpdateFolder.new # CreateUpdateFolder | Name of the folder


begin
  #Create a folder
  result = api_instance.create_folder(create_folder)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling FoldersApi->create_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_folder** | [**CreateUpdateFolder**](CreateUpdateFolder.md)| Name of the folder | 

### Return type

[**CreateModel**](CreateModel.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_folder**
> delete_folder(folder_id)

Delete a folder (and all its lists)

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

api_instance = SibApiV3Sdk::FoldersApi.new

folder_id = 789 # Integer | Id of the folder


begin
  #Delete a folder (and all its lists)
  api_instance.delete_folder(folder_id)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling FoldersApi->delete_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder_id** | **Integer**| Id of the folder | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_folder**
> GetFolder get_folder(folder_id)

Returns a folder's details

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

api_instance = SibApiV3Sdk::FoldersApi.new

folder_id = 789 # Integer | id of the folder


begin
  #Returns a folder's details
  result = api_instance.get_folder(folder_id)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling FoldersApi->get_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder_id** | **Integer**| id of the folder | 

### Return type

[**GetFolder**](GetFolder.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_folder_lists**
> GetFolderLists get_folder_lists(folder_id, opts)

Get lists in a folder

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

api_instance = SibApiV3Sdk::FoldersApi.new

folder_id = 789 # Integer | Id of the folder

opts = { 
  limit: 10, # Integer | Number of documents per page
  offset: 0, # Integer | Index of the first document of the page
  sort: 'desc' # String | Sort the results in the ascending/descending order of record creation. Default order is **descending** if `sort` is not passed
}

begin
  #Get lists in a folder
  result = api_instance.get_folder_lists(folder_id, opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling FoldersApi->get_folder_lists: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder_id** | **Integer**| Id of the folder | 
 **limit** | **Integer**| Number of documents per page | [optional] [default to 10]
 **offset** | **Integer**| Index of the first document of the page | [optional] [default to 0]
 **sort** | **String**| Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional] [default to desc]

### Return type

[**GetFolderLists**](GetFolderLists.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_folders**
> GetFolders get_folders(limit, offset, opts)

Get all folders

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

api_instance = SibApiV3Sdk::FoldersApi.new

limit = 10 # Integer | Number of documents per page

offset = 0 # Integer | Index of the first document of the page

opts = { 
  sort: 'desc' # String | Sort the results in the ascending/descending order of record creation. Default order is **descending** if `sort` is not passed
}

begin
  #Get all folders
  result = api_instance.get_folders(limit, offset, opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling FoldersApi->get_folders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Number of documents per page | [default to 10]
 **offset** | **Integer**| Index of the first document of the page | [default to 0]
 **sort** | **String**| Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional] [default to desc]

### Return type

[**GetFolders**](GetFolders.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_folder**
> update_folder(folder_id, update_folder)

Update a folder

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

api_instance = SibApiV3Sdk::FoldersApi.new

folder_id = 789 # Integer | Id of the folder

update_folder = SibApiV3Sdk::CreateUpdateFolder.new # CreateUpdateFolder | Name of the folder


begin
  #Update a folder
  api_instance.update_folder(folder_id, update_folder)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling FoldersApi->update_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder_id** | **Integer**| Id of the folder | 
 **update_folder** | [**CreateUpdateFolder**](CreateUpdateFolder.md)| Name of the folder | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



