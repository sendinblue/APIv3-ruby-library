# SibApiV3Sdk::ListsApi

All URIs are relative to *https://api.sendinblue.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_contact_to_list**](ListsApi.md#add_contact_to_list) | **POST** /contacts/lists/{listId}/contacts/add | Add existing contacts to a list |
| [**create_list**](ListsApi.md#create_list) | **POST** /contacts/lists | Create a list |
| [**delete_list**](ListsApi.md#delete_list) | **DELETE** /contacts/lists/{listId} | Delete a list |
| [**get_contacts_from_list**](ListsApi.md#get_contacts_from_list) | **GET** /contacts/lists/{listId}/contacts | Get contacts in a list |
| [**get_folder_lists**](ListsApi.md#get_folder_lists) | **GET** /contacts/folders/{folderId}/lists | Get lists in a folder |
| [**get_list**](ListsApi.md#get_list) | **GET** /contacts/lists/{listId} | Get a list&#39;s details |
| [**get_lists**](ListsApi.md#get_lists) | **GET** /contacts/lists | Get all the lists |
| [**remove_contact_from_list**](ListsApi.md#remove_contact_from_list) | **POST** /contacts/lists/{listId}/contacts/remove | Delete a contact from a list |
| [**update_list**](ListsApi.md#update_list) | **PUT** /contacts/lists/{listId} | Update a list |


## add_contact_to_list

> <PostContactInfo> add_contact_to_list(list_id, contact_emails)

Add existing contacts to a list

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

api_instance = SibApiV3Sdk::ListsApi.new
list_id = 789 # Integer | Id of the list
contact_emails = SibApiV3Sdk::AddContactToList.new # AddContactToList | Emails addresses OR IDs of the contacts

begin
  # Add existing contacts to a list
  result = api_instance.add_contact_to_list(list_id, contact_emails)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ListsApi->add_contact_to_list: #{e}"
end
```

#### Using the add_contact_to_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostContactInfo>, Integer, Hash)> add_contact_to_list_with_http_info(list_id, contact_emails)

```ruby
begin
  # Add existing contacts to a list
  data, status_code, headers = api_instance.add_contact_to_list_with_http_info(list_id, contact_emails)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostContactInfo>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ListsApi->add_contact_to_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** | Id of the list |  |
| **contact_emails** | [**AddContactToList**](AddContactToList.md) | Emails addresses OR IDs of the contacts |  |

### Return type

[**PostContactInfo**](PostContactInfo.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_list

> <CreateModel> create_list(create_list)

Create a list

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

api_instance = SibApiV3Sdk::ListsApi.new
create_list = SibApiV3Sdk::CreateList.new({name: 'Magento Customer - ES', folder_id: 2}) # CreateList | Values to create a list

begin
  # Create a list
  result = api_instance.create_list(create_list)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ListsApi->create_list: #{e}"
end
```

#### Using the create_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateModel>, Integer, Hash)> create_list_with_http_info(create_list)

```ruby
begin
  # Create a list
  data, status_code, headers = api_instance.create_list_with_http_info(create_list)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateModel>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ListsApi->create_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_list** | [**CreateList**](CreateList.md) | Values to create a list |  |

### Return type

[**CreateModel**](CreateModel.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_list

> delete_list(list_id)

Delete a list

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

api_instance = SibApiV3Sdk::ListsApi.new
list_id = 789 # Integer | Id of the list

begin
  # Delete a list
  api_instance.delete_list(list_id)
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ListsApi->delete_list: #{e}"
end
```

#### Using the delete_list_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_list_with_http_info(list_id)

```ruby
begin
  # Delete a list
  data, status_code, headers = api_instance.delete_list_with_http_info(list_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ListsApi->delete_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** | Id of the list |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contacts_from_list

> <GetContacts> get_contacts_from_list(list_id, opts)

Get contacts in a list

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

api_instance = SibApiV3Sdk::ListsApi.new
list_id = 789 # Integer | Id of the list
opts = {
  modified_since: 'modified_since_example', # String | Filter (urlencoded) the contacts modified after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). Prefer to pass your timezone in date-time format for accurate result.
  limit: 789, # Integer | Number of documents per page
  offset: 789, # Integer | Index of the first document of the page
  sort: 'asc' # String | Sort the results in the ascending/descending order of record creation. Default order is **descending** if `sort` is not passed
}

begin
  # Get contacts in a list
  result = api_instance.get_contacts_from_list(list_id, opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ListsApi->get_contacts_from_list: #{e}"
end
```

#### Using the get_contacts_from_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetContacts>, Integer, Hash)> get_contacts_from_list_with_http_info(list_id, opts)

```ruby
begin
  # Get contacts in a list
  data, status_code, headers = api_instance.get_contacts_from_list_with_http_info(list_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetContacts>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ListsApi->get_contacts_from_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** | Id of the list |  |
| **modified_since** | **String** | Filter (urlencoded) the contacts modified after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). Prefer to pass your timezone in date-time format for accurate result. | [optional] |
| **limit** | **Integer** | Number of documents per page | [optional][default to 50] |
| **offset** | **Integer** | Index of the first document of the page | [optional][default to 0] |
| **sort** | **String** | Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional][default to &#39;desc&#39;] |

### Return type

[**GetContacts**](GetContacts.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_folder_lists

> <GetFolderLists> get_folder_lists(folder_id, opts)

Get lists in a folder

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

api_instance = SibApiV3Sdk::ListsApi.new
folder_id = 789 # Integer | Id of the folder
opts = {
  limit: 789, # Integer | Number of documents per page
  offset: 789, # Integer | Index of the first document of the page
  sort: 'asc' # String | Sort the results in the ascending/descending order of record creation. Default order is **descending** if `sort` is not passed
}

begin
  # Get lists in a folder
  result = api_instance.get_folder_lists(folder_id, opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ListsApi->get_folder_lists: #{e}"
end
```

#### Using the get_folder_lists_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFolderLists>, Integer, Hash)> get_folder_lists_with_http_info(folder_id, opts)

```ruby
begin
  # Get lists in a folder
  data, status_code, headers = api_instance.get_folder_lists_with_http_info(folder_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFolderLists>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ListsApi->get_folder_lists_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | Id of the folder |  |
| **limit** | **Integer** | Number of documents per page | [optional][default to 10] |
| **offset** | **Integer** | Index of the first document of the page | [optional][default to 0] |
| **sort** | **String** | Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional][default to &#39;desc&#39;] |

### Return type

[**GetFolderLists**](GetFolderLists.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_list

> <GetExtendedList> get_list(list_id)

Get a list's details

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

api_instance = SibApiV3Sdk::ListsApi.new
list_id = 789 # Integer | Id of the list

begin
  # Get a list's details
  result = api_instance.get_list(list_id)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ListsApi->get_list: #{e}"
end
```

#### Using the get_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetExtendedList>, Integer, Hash)> get_list_with_http_info(list_id)

```ruby
begin
  # Get a list's details
  data, status_code, headers = api_instance.get_list_with_http_info(list_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetExtendedList>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ListsApi->get_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** | Id of the list |  |

### Return type

[**GetExtendedList**](GetExtendedList.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lists

> <GetLists> get_lists(opts)

Get all the lists

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

api_instance = SibApiV3Sdk::ListsApi.new
opts = {
  limit: 789, # Integer | Number of documents per page
  offset: 789, # Integer | Index of the first document of the page
  sort: 'asc' # String | Sort the results in the ascending/descending order of record creation. Default order is **descending** if `sort` is not passed
}

begin
  # Get all the lists
  result = api_instance.get_lists(opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ListsApi->get_lists: #{e}"
end
```

#### Using the get_lists_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLists>, Integer, Hash)> get_lists_with_http_info(opts)

```ruby
begin
  # Get all the lists
  data, status_code, headers = api_instance.get_lists_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLists>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ListsApi->get_lists_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number of documents per page | [optional][default to 10] |
| **offset** | **Integer** | Index of the first document of the page | [optional][default to 0] |
| **sort** | **String** | Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional][default to &#39;desc&#39;] |

### Return type

[**GetLists**](GetLists.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_contact_from_list

> <PostContactInfo> remove_contact_from_list(list_id, contact_emails)

Delete a contact from a list

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

api_instance = SibApiV3Sdk::ListsApi.new
list_id = 789 # Integer | Id of the list
contact_emails = SibApiV3Sdk::RemoveContactFromList.new # RemoveContactFromList | Emails addresses OR IDs of the contacts

begin
  # Delete a contact from a list
  result = api_instance.remove_contact_from_list(list_id, contact_emails)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ListsApi->remove_contact_from_list: #{e}"
end
```

#### Using the remove_contact_from_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostContactInfo>, Integer, Hash)> remove_contact_from_list_with_http_info(list_id, contact_emails)

```ruby
begin
  # Delete a contact from a list
  data, status_code, headers = api_instance.remove_contact_from_list_with_http_info(list_id, contact_emails)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostContactInfo>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ListsApi->remove_contact_from_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** | Id of the list |  |
| **contact_emails** | [**RemoveContactFromList**](RemoveContactFromList.md) | Emails addresses OR IDs of the contacts |  |

### Return type

[**PostContactInfo**](PostContactInfo.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_list

> update_list(list_id, update_list)

Update a list

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

api_instance = SibApiV3Sdk::ListsApi.new
list_id = 789 # Integer | Id of the list
update_list = SibApiV3Sdk::UpdateList.new # UpdateList | Values to update a list

begin
  # Update a list
  api_instance.update_list(list_id, update_list)
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ListsApi->update_list: #{e}"
end
```

#### Using the update_list_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_list_with_http_info(list_id, update_list)

```ruby
begin
  # Update a list
  data, status_code, headers = api_instance.update_list_with_http_info(list_id, update_list)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ListsApi->update_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** | Id of the list |  |
| **update_list** | [**UpdateList**](UpdateList.md) | Values to update a list |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

