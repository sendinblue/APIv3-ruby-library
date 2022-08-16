# SibApiV3Sdk::TasksApi

All URIs are relative to *https://api.sendinblue.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**crm_tasks_get**](TasksApi.md#crm_tasks_get) | **GET** /crm/tasks | Get all tasks
[**crm_tasks_id_delete**](TasksApi.md#crm_tasks_id_delete) | **DELETE** /crm/tasks/{id} | Delete a task
[**crm_tasks_id_get**](TasksApi.md#crm_tasks_id_get) | **GET** /crm/tasks/{id} | Get a task
[**crm_tasks_id_patch**](TasksApi.md#crm_tasks_id_patch) | **PATCH** /crm/tasks/{id} | Update a task
[**crm_tasks_post**](TasksApi.md#crm_tasks_post) | **POST** /crm/tasks | Create a task
[**crm_tasktypes_get**](TasksApi.md#crm_tasktypes_get) | **GET** /crm/tasktypes | Get all task types


# **crm_tasks_get**
> TaskList crm_tasks_get(opts)

Get all tasks

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

api_instance = SibApiV3Sdk::TasksApi.new

opts = { 
  filter_type: 'filter_type_example', # String | Filter by task type (ID)
  filter_status: 'filter_status_example', # String | Filter by task status
  filter_date: 'filter_date_example', # String | Filter by date
  filter_assign_to: 'filter_assign_to_example', # String | Filter by assignTo id
  filter_contacts: 'filter_contacts_example', # String | Filter by contact ids
  filter_deals: 'filter_deals_example', # String | Filter by deals ids
  filter_companies: 'filter_companies_example', # String | Filter by companies ids
  date_from: 56, # Integer | dateFrom to date range filter type (timestamp in milliseconds)
  date_to: 56, # Integer | dateTo to date range filter type (timestamp in milliseconds)
  offset: 789, # Integer | Index of the first document of the page
  limit: 50, # Integer | Number of documents per page
  sort: 'sort_example', # String | Sort the results in the ascending/descending order. Default order is **descending** by creation if `sort` is not passed
  sort_by: 'sort_by_example' # String | The field used to sort field names.
}

begin
  #Get all tasks
  result = api_instance.crm_tasks_get(opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling TasksApi->crm_tasks_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_type** | **String**| Filter by task type (ID) | [optional] 
 **filter_status** | **String**| Filter by task status | [optional] 
 **filter_date** | **String**| Filter by date | [optional] 
 **filter_assign_to** | **String**| Filter by assignTo id | [optional] 
 **filter_contacts** | **String**| Filter by contact ids | [optional] 
 **filter_deals** | **String**| Filter by deals ids | [optional] 
 **filter_companies** | **String**| Filter by companies ids | [optional] 
 **date_from** | **Integer**| dateFrom to date range filter type (timestamp in milliseconds) | [optional] 
 **date_to** | **Integer**| dateTo to date range filter type (timestamp in milliseconds) | [optional] 
 **offset** | **Integer**| Index of the first document of the page | [optional] 
 **limit** | **Integer**| Number of documents per page | [optional] [default to 50]
 **sort** | **String**| Sort the results in the ascending/descending order. Default order is **descending** by creation if &#x60;sort&#x60; is not passed | [optional] 
 **sort_by** | **String**| The field used to sort field names. | [optional] 

### Return type

[**TaskList**](TaskList.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **crm_tasks_id_delete**
> crm_tasks_id_delete(id)

Delete a task

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

api_instance = SibApiV3Sdk::TasksApi.new

id = 'id_example' # String | 


begin
  #Delete a task
  api_instance.crm_tasks_id_delete(id)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling TasksApi->crm_tasks_id_delete: #{e}"
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

Get a task

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

api_instance = SibApiV3Sdk::TasksApi.new

id = 'id_example' # String | 


begin
  #Get a task
  result = api_instance.crm_tasks_id_get(id)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling TasksApi->crm_tasks_id_get: #{e}"
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
> crm_tasks_id_patch(id, body)

Update a task

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

api_instance = SibApiV3Sdk::TasksApi.new

id = 'id_example' # String | 

body = SibApiV3Sdk::Body7.new # Body7 | Updated task details.


begin
  #Update a task
  api_instance.crm_tasks_id_patch(id, body)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling TasksApi->crm_tasks_id_patch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **body** | [**Body7**](Body7.md)| Updated task details. | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **crm_tasks_post**
> InlineResponse2011 crm_tasks_post(body)

Create a task

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

api_instance = SibApiV3Sdk::TasksApi.new

body = SibApiV3Sdk::Body6.new # Body6 | Task name.


begin
  #Create a task
  result = api_instance.crm_tasks_post(body)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling TasksApi->crm_tasks_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body6**](Body6.md)| Task name. | 

### Return type

[**InlineResponse2011**](InlineResponse2011.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **crm_tasktypes_get**
> TaskTypes crm_tasktypes_get

Get all task types

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

api_instance = SibApiV3Sdk::TasksApi.new

begin
  #Get all task types
  result = api_instance.crm_tasktypes_get
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling TasksApi->crm_tasktypes_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TaskTypes**](TaskTypes.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



