# SibApiV3Sdk::ProcessApi

All URIs are relative to *https://api.sendinblue.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_process**](ProcessApi.md#get_process) | **GET** /processes/{processId} | Return the informations for a process |
| [**get_processes**](ProcessApi.md#get_processes) | **GET** /processes | Return all the processes for your account |


## get_process

> <GetProcess> get_process(process_id)

Return the informations for a process

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

api_instance = SibApiV3Sdk::ProcessApi.new
process_id = 789 # Integer | Id of the process

begin
  # Return the informations for a process
  result = api_instance.get_process(process_id)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ProcessApi->get_process: #{e}"
end
```

#### Using the get_process_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProcess>, Integer, Hash)> get_process_with_http_info(process_id)

```ruby
begin
  # Return the informations for a process
  data, status_code, headers = api_instance.get_process_with_http_info(process_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProcess>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ProcessApi->get_process_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **process_id** | **Integer** | Id of the process |  |

### Return type

[**GetProcess**](GetProcess.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_processes

> <GetProcesses> get_processes(opts)

Return all the processes for your account

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

api_instance = SibApiV3Sdk::ProcessApi.new
opts = {
  limit: 789, # Integer | Number limitation for the result returned
  offset: 789, # Integer | Beginning point in the list to retrieve from.
  sort: 'asc' # String | Sort the results in the ascending/descending order of record creation. Default order is **descending** if `sort` is not passed
}

begin
  # Return all the processes for your account
  result = api_instance.get_processes(opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ProcessApi->get_processes: #{e}"
end
```

#### Using the get_processes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProcesses>, Integer, Hash)> get_processes_with_http_info(opts)

```ruby
begin
  # Return all the processes for your account
  data, status_code, headers = api_instance.get_processes_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProcesses>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ProcessApi->get_processes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number limitation for the result returned | [optional][default to 10] |
| **offset** | **Integer** | Beginning point in the list to retrieve from. | [optional][default to 0] |
| **sort** | **String** | Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional][default to &#39;desc&#39;] |

### Return type

[**GetProcesses**](GetProcesses.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

