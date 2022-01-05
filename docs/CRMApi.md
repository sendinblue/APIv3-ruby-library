# SibApiV3Sdk::CRMApi

All URIs are relative to *https://api.sendinblue.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**crm_files_id_data_get**](CRMApi.md#crm_files_id_data_get) | **GET** /crm/files/{id}/data | Get file data by id.
[**crm_files_id_delete**](CRMApi.md#crm_files_id_delete) | **DELETE** /crm/files/{id} | Delete file.
[**crm_files_id_get**](CRMApi.md#crm_files_id_get) | **GET** /crm/files/{id} | Download file by id.
[**crm_files_post**](CRMApi.md#crm_files_post) | **POST** /crm/files | Upload and create file.
[**crm_notes_id_delete**](CRMApi.md#crm_notes_id_delete) | **DELETE** /crm/notes/{id} | Delete Note by ID
[**crm_notes_id_get**](CRMApi.md#crm_notes_id_get) | **GET** /crm/notes/{id} | Get one Note by ID
[**crm_notes_id_patch**](CRMApi.md#crm_notes_id_patch) | **PATCH** /crm/notes/{id} | Update a note
[**crm_notes_post**](CRMApi.md#crm_notes_post) | **POST** /crm/notes | Create a new Note
[**crm_tasks_id_delete**](CRMApi.md#crm_tasks_id_delete) | **DELETE** /crm/tasks/{id} | Delete Task by id
[**crm_tasks_id_get**](CRMApi.md#crm_tasks_id_get) | **GET** /crm/tasks/{id} | Get one Task by ID
[**crm_tasks_id_patch**](CRMApi.md#crm_tasks_id_patch) | **PATCH** /crm/tasks/{id} | Update partial existing task
[**crm_tasks_post**](CRMApi.md#crm_tasks_post) | **POST** /crm/tasks | Create a new Task


# **crm_files_id_data_get**
> FileData crm_files_id_data_get(id)

Get file data by id.

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

api_instance = SibApiV3Sdk::CRMApi.new

id = 'id_example' # String | File id to get file data.


begin
  #Get file data by id.
  result = api_instance.crm_files_id_data_get(id)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling CRMApi->crm_files_id_data_get: #{e}"
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

Delete file.

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

api_instance = SibApiV3Sdk::CRMApi.new

id = 'id_example' # String | File id to delete.


begin
  #Delete file.
  api_instance.crm_files_id_delete(id)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling CRMApi->crm_files_id_delete: #{e}"
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
> crm_files_id_get(id)

Download file by id.

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

api_instance = SibApiV3Sdk::CRMApi.new

id = 'id_example' # String | File id to download.


begin
  #Download file by id.
  api_instance.crm_files_id_get(id)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling CRMApi->crm_files_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| File id to download. | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **crm_files_post**
> FileData crm_files_post(file, opts)

Upload and create file.

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

api_instance = SibApiV3Sdk::CRMApi.new

file = File.new('/path/to/file.txt') # File | File data to create a file.

opts = { 
  deals_ids: ['deals_ids_example'] # Array<String> | Deal ids linked to a file
}

begin
  #Upload and create file.
  result = api_instance.crm_files_post(file, opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling CRMApi->crm_files_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**| File data to create a file. | 
 **deals_ids** | [**Array&lt;String&gt;**](String.md)| Deal ids linked to a file | [optional] 

### Return type

[**FileData**](FileData.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **crm_notes_id_delete**
> crm_notes_id_delete(id)

Delete Note by ID

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

api_instance = SibApiV3Sdk::CRMApi.new

id = 'id_example' # String | Note ID to delete


begin
  #Delete Note by ID
  api_instance.crm_notes_id_delete(id)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling CRMApi->crm_notes_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Note ID to delete | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **crm_notes_id_get**
> Note crm_notes_id_get(id)

Get one Note by ID

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

api_instance = SibApiV3Sdk::CRMApi.new

id = 'id_example' # String | Note ID to get


begin
  #Get one Note by ID
  result = api_instance.crm_notes_id_get(id)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling CRMApi->crm_notes_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Note ID to get | 

### Return type

[**Note**](Note.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **crm_notes_id_patch**
> Note crm_notes_id_patch(id, body)

Update a note

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

api_instance = SibApiV3Sdk::CRMApi.new

id = 'id_example' # String | Note ID to update

body = SibApiV3Sdk::NoteData.new # NoteData | Note data to update a note


begin
  #Update a note
  result = api_instance.crm_notes_id_patch(id, body)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling CRMApi->crm_notes_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Note ID to update | 
 **body** | [**NoteData**](NoteData.md)| Note data to update a note | 

### Return type

[**Note**](Note.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **crm_notes_post**
> Note crm_notes_post(body)

Create a new Note

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

api_instance = SibApiV3Sdk::CRMApi.new

body = SibApiV3Sdk::NoteData.new # NoteData | Note data to create a note.


begin
  #Create a new Note
  result = api_instance.crm_notes_post(body)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling CRMApi->crm_notes_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**NoteData**](NoteData.md)| Note data to create a note. | 

### Return type

[**Note**](Note.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **crm_tasks_id_delete**
> crm_tasks_id_delete(id)

Delete Task by id

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

api_instance = SibApiV3Sdk::CRMApi.new

id = 'id_example' # String | 


begin
  #Delete Task by id
  api_instance.crm_tasks_id_delete(id)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling CRMApi->crm_tasks_id_delete: #{e}"
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



# **crm_tasks_id_get**
> Task crm_tasks_id_get(id)

Get one Task by ID

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

api_instance = SibApiV3Sdk::CRMApi.new

id = 'id_example' # String | 


begin
  #Get one Task by ID
  result = api_instance.crm_tasks_id_get(id)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling CRMApi->crm_tasks_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Task**](Task.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **crm_tasks_id_patch**
> Task crm_tasks_id_patch(id, body)

Update partial existing task

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

api_instance = SibApiV3Sdk::CRMApi.new

id = 'id_example' # String | 

body = SibApiV3Sdk::Body1.new # Body1 | Updated task details.


begin
  #Update partial existing task
  result = api_instance.crm_tasks_id_patch(id, body)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling CRMApi->crm_tasks_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **body** | [**Body1**](Body1.md)| Updated task details. | 

### Return type

[**Task**](Task.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **crm_tasks_post**
> Task crm_tasks_post(body)

Create a new Task

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

api_instance = SibApiV3Sdk::CRMApi.new

body = SibApiV3Sdk::Body.new # Body | Task name.


begin
  #Create a new Task
  result = api_instance.crm_tasks_post(body)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling CRMApi->crm_tasks_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body**](Body.md)| Task name. | 

### Return type

[**Task**](Task.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



