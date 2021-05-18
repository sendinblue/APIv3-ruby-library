# SibApiV3Sdk::ContactsApi

All URIs are relative to *https://api.sendinblue.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_contact_to_list**](ContactsApi.md#add_contact_to_list) | **POST** /contacts/lists/{listId}/contacts/add | Add existing contacts to a list |
| [**create_attribute**](ContactsApi.md#create_attribute) | **POST** /contacts/attributes/{attributeCategory}/{attributeName} | Create contact attribute |
| [**create_contact**](ContactsApi.md#create_contact) | **POST** /contacts | Create a contact |
| [**create_doi_contact**](ContactsApi.md#create_doi_contact) | **POST** /contacts/doubleOptinConfirmation | Create Contact via DOI (Double-Opt-In) Flow |
| [**create_folder**](ContactsApi.md#create_folder) | **POST** /contacts/folders | Create a folder |
| [**create_list**](ContactsApi.md#create_list) | **POST** /contacts/lists | Create a list |
| [**delete_attribute**](ContactsApi.md#delete_attribute) | **DELETE** /contacts/attributes/{attributeCategory}/{attributeName} | Delete an attribute |
| [**delete_contact**](ContactsApi.md#delete_contact) | **DELETE** /contacts/{identifier} | Delete a contact |
| [**delete_folder**](ContactsApi.md#delete_folder) | **DELETE** /contacts/folders/{folderId} | Delete a folder (and all its lists) |
| [**delete_list**](ContactsApi.md#delete_list) | **DELETE** /contacts/lists/{listId} | Delete a list |
| [**get_attributes**](ContactsApi.md#get_attributes) | **GET** /contacts/attributes | List all attributes |
| [**get_contact_info**](ContactsApi.md#get_contact_info) | **GET** /contacts/{identifier} | Get a contact&#39;s details |
| [**get_contact_stats**](ContactsApi.md#get_contact_stats) | **GET** /contacts/{identifier}/campaignStats | Get email campaigns&#39; statistics for a contact |
| [**get_contacts**](ContactsApi.md#get_contacts) | **GET** /contacts | Get all the contacts |
| [**get_contacts_from_list**](ContactsApi.md#get_contacts_from_list) | **GET** /contacts/lists/{listId}/contacts | Get contacts in a list |
| [**get_folder**](ContactsApi.md#get_folder) | **GET** /contacts/folders/{folderId} | Returns a folder&#39;s details |
| [**get_folder_lists**](ContactsApi.md#get_folder_lists) | **GET** /contacts/folders/{folderId}/lists | Get lists in a folder |
| [**get_folders**](ContactsApi.md#get_folders) | **GET** /contacts/folders | Get all folders |
| [**get_list**](ContactsApi.md#get_list) | **GET** /contacts/lists/{listId} | Get a list&#39;s details |
| [**get_lists**](ContactsApi.md#get_lists) | **GET** /contacts/lists | Get all the lists |
| [**import_contacts**](ContactsApi.md#import_contacts) | **POST** /contacts/import | Import contacts |
| [**remove_contact_from_list**](ContactsApi.md#remove_contact_from_list) | **POST** /contacts/lists/{listId}/contacts/remove | Delete a contact from a list |
| [**request_contact_export**](ContactsApi.md#request_contact_export) | **POST** /contacts/export | Export contacts |
| [**update_attribute**](ContactsApi.md#update_attribute) | **PUT** /contacts/attributes/{attributeCategory}/{attributeName} | Update contact attribute |
| [**update_contact**](ContactsApi.md#update_contact) | **PUT** /contacts/{identifier} | Update a contact |
| [**update_folder**](ContactsApi.md#update_folder) | **PUT** /contacts/folders/{folderId} | Update a folder |
| [**update_list**](ContactsApi.md#update_list) | **PUT** /contacts/lists/{listId} | Update a list |


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

api_instance = SibApiV3Sdk::ContactsApi.new
list_id = 789 # Integer | Id of the list
contact_emails = SibApiV3Sdk::AddContactToList.new # AddContactToList | Emails addresses OR IDs of the contacts

begin
  # Add existing contacts to a list
  result = api_instance.add_contact_to_list(list_id, contact_emails)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->add_contact_to_list: #{e}"
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
  puts "Error when calling ContactsApi->add_contact_to_list_with_http_info: #{e}"
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

api_instance = SibApiV3Sdk::ContactsApi.new
attribute_category = 'normal' # String | Category of the attribute
attribute_name = 'attribute_name_example' # String | Name of the attribute
create_attribute = SibApiV3Sdk::CreateAttribute.new # CreateAttribute | Values to create an attribute

begin
  # Create contact attribute
  api_instance.create_attribute(attribute_category, attribute_name, create_attribute)
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->create_attribute: #{e}"
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
  puts "Error when calling ContactsApi->create_attribute_with_http_info: #{e}"
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


## create_contact

> <CreateUpdateContactModel> create_contact(create_contact)

Create a contact

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

api_instance = SibApiV3Sdk::ContactsApi.new
create_contact = SibApiV3Sdk::CreateContact.new # CreateContact | Values to create a contact

begin
  # Create a contact
  result = api_instance.create_contact(create_contact)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->create_contact: #{e}"
end
```

#### Using the create_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateUpdateContactModel>, Integer, Hash)> create_contact_with_http_info(create_contact)

```ruby
begin
  # Create a contact
  data, status_code, headers = api_instance.create_contact_with_http_info(create_contact)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateUpdateContactModel>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->create_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_contact** | [**CreateContact**](CreateContact.md) | Values to create a contact |  |

### Return type

[**CreateUpdateContactModel**](CreateUpdateContactModel.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_doi_contact

> create_doi_contact(create_doi_contact)

Create Contact via DOI (Double-Opt-In) Flow

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

api_instance = SibApiV3Sdk::ContactsApi.new
create_doi_contact = SibApiV3Sdk::CreateDoiContact.new({email: 'elly@example.com', include_list_ids: [36], template_id: 2, redirection_url: 'http://requestb.in/173lyyx1'}) # CreateDoiContact | Values to create the Double opt-in (DOI) contact

begin
  # Create Contact via DOI (Double-Opt-In) Flow
  api_instance.create_doi_contact(create_doi_contact)
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->create_doi_contact: #{e}"
end
```

#### Using the create_doi_contact_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_doi_contact_with_http_info(create_doi_contact)

```ruby
begin
  # Create Contact via DOI (Double-Opt-In) Flow
  data, status_code, headers = api_instance.create_doi_contact_with_http_info(create_doi_contact)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->create_doi_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_doi_contact** | [**CreateDoiContact**](CreateDoiContact.md) | Values to create the Double opt-in (DOI) contact |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_folder

> <CreateModel> create_folder(create_folder)

Create a folder

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

api_instance = SibApiV3Sdk::ContactsApi.new
create_folder = SibApiV3Sdk::CreateUpdateFolder.new # CreateUpdateFolder | Name of the folder

begin
  # Create a folder
  result = api_instance.create_folder(create_folder)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->create_folder: #{e}"
end
```

#### Using the create_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateModel>, Integer, Hash)> create_folder_with_http_info(create_folder)

```ruby
begin
  # Create a folder
  data, status_code, headers = api_instance.create_folder_with_http_info(create_folder)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateModel>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->create_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_folder** | [**CreateUpdateFolder**](CreateUpdateFolder.md) | Name of the folder |  |

### Return type

[**CreateModel**](CreateModel.md)

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

api_instance = SibApiV3Sdk::ContactsApi.new
create_list = SibApiV3Sdk::CreateList.new({name: 'Magento Customer - ES', folder_id: 2}) # CreateList | Values to create a list

begin
  # Create a list
  result = api_instance.create_list(create_list)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->create_list: #{e}"
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
  puts "Error when calling ContactsApi->create_list_with_http_info: #{e}"
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

api_instance = SibApiV3Sdk::ContactsApi.new
attribute_category = 'normal' # String | Category of the attribute
attribute_name = 'attribute_name_example' # String | Name of the existing attribute

begin
  # Delete an attribute
  api_instance.delete_attribute(attribute_category, attribute_name)
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->delete_attribute: #{e}"
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
  puts "Error when calling ContactsApi->delete_attribute_with_http_info: #{e}"
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


## delete_contact

> delete_contact(identifier)

Delete a contact

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

api_instance = SibApiV3Sdk::ContactsApi.new
identifier = 'identifier_example' # String | Email (urlencoded) OR ID of the contact

begin
  # Delete a contact
  api_instance.delete_contact(identifier)
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->delete_contact: #{e}"
end
```

#### Using the delete_contact_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_contact_with_http_info(identifier)

```ruby
begin
  # Delete a contact
  data, status_code, headers = api_instance.delete_contact_with_http_info(identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->delete_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | Email (urlencoded) OR ID of the contact |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_folder

> delete_folder(folder_id)

Delete a folder (and all its lists)

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

api_instance = SibApiV3Sdk::ContactsApi.new
folder_id = 789 # Integer | Id of the folder

begin
  # Delete a folder (and all its lists)
  api_instance.delete_folder(folder_id)
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->delete_folder: #{e}"
end
```

#### Using the delete_folder_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_folder_with_http_info(folder_id)

```ruby
begin
  # Delete a folder (and all its lists)
  data, status_code, headers = api_instance.delete_folder_with_http_info(folder_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->delete_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | Id of the folder |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: Not defined
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

api_instance = SibApiV3Sdk::ContactsApi.new
list_id = 789 # Integer | Id of the list

begin
  # Delete a list
  api_instance.delete_list(list_id)
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->delete_list: #{e}"
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
  puts "Error when calling ContactsApi->delete_list_with_http_info: #{e}"
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

api_instance = SibApiV3Sdk::ContactsApi.new

begin
  # List all attributes
  result = api_instance.get_attributes
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->get_attributes: #{e}"
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
  puts "Error when calling ContactsApi->get_attributes_with_http_info: #{e}"
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


## get_contact_info

> <GetExtendedContactDetails> get_contact_info(identifier)

Get a contact's details

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

api_instance = SibApiV3Sdk::ContactsApi.new
identifier = 'identifier_example' # String | Email (urlencoded) OR ID of the contact OR its SMS attribute value

begin
  # Get a contact's details
  result = api_instance.get_contact_info(identifier)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->get_contact_info: #{e}"
end
```

#### Using the get_contact_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetExtendedContactDetails>, Integer, Hash)> get_contact_info_with_http_info(identifier)

```ruby
begin
  # Get a contact's details
  data, status_code, headers = api_instance.get_contact_info_with_http_info(identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetExtendedContactDetails>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->get_contact_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | Email (urlencoded) OR ID of the contact OR its SMS attribute value |  |

### Return type

[**GetExtendedContactDetails**](GetExtendedContactDetails.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contact_stats

> <GetContactCampaignStats> get_contact_stats(identifier, opts)

Get email campaigns' statistics for a contact

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

api_instance = SibApiV3Sdk::ContactsApi.new
identifier = 'identifier_example' # String | Email (urlencoded) OR ID of the contact
opts = {
  start_date: 'start_date_example', # String | Mandatory if endDate is used. Starting date (YYYY-MM-DD) of the statistic events specific to campaigns. Must be lower than equal to endDate
  end_date: 'end_date_example' # String | Mandatory if startDate is used. Ending date (YYYY-MM-DD) of the statistic events specific to campaigns. Must be greater than equal to startDate
}

begin
  # Get email campaigns' statistics for a contact
  result = api_instance.get_contact_stats(identifier, opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->get_contact_stats: #{e}"
end
```

#### Using the get_contact_stats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetContactCampaignStats>, Integer, Hash)> get_contact_stats_with_http_info(identifier, opts)

```ruby
begin
  # Get email campaigns' statistics for a contact
  data, status_code, headers = api_instance.get_contact_stats_with_http_info(identifier, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetContactCampaignStats>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->get_contact_stats_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | Email (urlencoded) OR ID of the contact |  |
| **start_date** | **String** | Mandatory if endDate is used. Starting date (YYYY-MM-DD) of the statistic events specific to campaigns. Must be lower than equal to endDate | [optional] |
| **end_date** | **String** | Mandatory if startDate is used. Ending date (YYYY-MM-DD) of the statistic events specific to campaigns. Must be greater than equal to startDate | [optional] |

### Return type

[**GetContactCampaignStats**](GetContactCampaignStats.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contacts

> <GetContacts> get_contacts(opts)

Get all the contacts

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

api_instance = SibApiV3Sdk::ContactsApi.new
opts = {
  limit: 789, # Integer | Number of documents per page
  offset: 789, # Integer | Index of the first document of the page
  modified_since: 'modified_since_example', # String | Filter (urlencoded) the contacts modified after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). Prefer to pass your timezone in date-time format for accurate result.
  sort: 'asc' # String | Sort the results in the ascending/descending order of record creation. Default order is **descending** if `sort` is not passed
}

begin
  # Get all the contacts
  result = api_instance.get_contacts(opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->get_contacts: #{e}"
end
```

#### Using the get_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetContacts>, Integer, Hash)> get_contacts_with_http_info(opts)

```ruby
begin
  # Get all the contacts
  data, status_code, headers = api_instance.get_contacts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetContacts>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->get_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number of documents per page | [optional][default to 50] |
| **offset** | **Integer** | Index of the first document of the page | [optional][default to 0] |
| **modified_since** | **String** | Filter (urlencoded) the contacts modified after a given UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). Prefer to pass your timezone in date-time format for accurate result. | [optional] |
| **sort** | **String** | Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional][default to &#39;desc&#39;] |

### Return type

[**GetContacts**](GetContacts.md)

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

api_instance = SibApiV3Sdk::ContactsApi.new
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
  puts "Error when calling ContactsApi->get_contacts_from_list: #{e}"
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
  puts "Error when calling ContactsApi->get_contacts_from_list_with_http_info: #{e}"
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


## get_folder

> <GetFolder> get_folder(folder_id)

Returns a folder's details

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

api_instance = SibApiV3Sdk::ContactsApi.new
folder_id = 789 # Integer | id of the folder

begin
  # Returns a folder's details
  result = api_instance.get_folder(folder_id)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->get_folder: #{e}"
end
```

#### Using the get_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFolder>, Integer, Hash)> get_folder_with_http_info(folder_id)

```ruby
begin
  # Returns a folder's details
  data, status_code, headers = api_instance.get_folder_with_http_info(folder_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFolder>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->get_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | id of the folder |  |

### Return type

[**GetFolder**](GetFolder.md)

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

api_instance = SibApiV3Sdk::ContactsApi.new
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
  puts "Error when calling ContactsApi->get_folder_lists: #{e}"
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
  puts "Error when calling ContactsApi->get_folder_lists_with_http_info: #{e}"
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


## get_folders

> <GetFolders> get_folders(limit, offset, opts)

Get all folders

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

api_instance = SibApiV3Sdk::ContactsApi.new
limit = 789 # Integer | Number of documents per page
offset = 789 # Integer | Index of the first document of the page
opts = {
  sort: 'asc' # String | Sort the results in the ascending/descending order of record creation. Default order is **descending** if `sort` is not passed
}

begin
  # Get all folders
  result = api_instance.get_folders(limit, offset, opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->get_folders: #{e}"
end
```

#### Using the get_folders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFolders>, Integer, Hash)> get_folders_with_http_info(limit, offset, opts)

```ruby
begin
  # Get all folders
  data, status_code, headers = api_instance.get_folders_with_http_info(limit, offset, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFolders>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->get_folders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number of documents per page | [default to 10] |
| **offset** | **Integer** | Index of the first document of the page | [default to 0] |
| **sort** | **String** | Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional][default to &#39;desc&#39;] |

### Return type

[**GetFolders**](GetFolders.md)

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

api_instance = SibApiV3Sdk::ContactsApi.new
list_id = 789 # Integer | Id of the list

begin
  # Get a list's details
  result = api_instance.get_list(list_id)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->get_list: #{e}"
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
  puts "Error when calling ContactsApi->get_list_with_http_info: #{e}"
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

api_instance = SibApiV3Sdk::ContactsApi.new
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
  puts "Error when calling ContactsApi->get_lists: #{e}"
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
  puts "Error when calling ContactsApi->get_lists_with_http_info: #{e}"
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


## import_contacts

> <CreatedProcessId> import_contacts(request_contact_import)

Import contacts

It returns the background process ID which on completion calls the notify URL that you have set in the input.

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

api_instance = SibApiV3Sdk::ContactsApi.new
request_contact_import = SibApiV3Sdk::RequestContactImport.new # RequestContactImport | Values to import contacts in Sendinblue. To know more about the expected format, please have a look at ``https://help.sendinblue.com/hc/en-us/articles/209499265-Build-contacts-lists-for-your-email-marketing-campaigns``

begin
  # Import contacts
  result = api_instance.import_contacts(request_contact_import)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->import_contacts: #{e}"
end
```

#### Using the import_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatedProcessId>, Integer, Hash)> import_contacts_with_http_info(request_contact_import)

```ruby
begin
  # Import contacts
  data, status_code, headers = api_instance.import_contacts_with_http_info(request_contact_import)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatedProcessId>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->import_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_contact_import** | [**RequestContactImport**](RequestContactImport.md) | Values to import contacts in Sendinblue. To know more about the expected format, please have a look at &#x60;&#x60;https://help.sendinblue.com/hc/en-us/articles/209499265-Build-contacts-lists-for-your-email-marketing-campaigns&#x60;&#x60; |  |

### Return type

[**CreatedProcessId**](CreatedProcessId.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: application/json
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

api_instance = SibApiV3Sdk::ContactsApi.new
list_id = 789 # Integer | Id of the list
contact_emails = SibApiV3Sdk::RemoveContactFromList.new # RemoveContactFromList | Emails addresses OR IDs of the contacts

begin
  # Delete a contact from a list
  result = api_instance.remove_contact_from_list(list_id, contact_emails)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->remove_contact_from_list: #{e}"
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
  puts "Error when calling ContactsApi->remove_contact_from_list_with_http_info: #{e}"
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


## request_contact_export

> <CreatedProcessId> request_contact_export(request_contact_export)

Export contacts

It returns the background process ID which on completion calls the notify URL that you have set in the input. File will be available in csv.

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

api_instance = SibApiV3Sdk::ContactsApi.new
request_contact_export = SibApiV3Sdk::RequestContactExport.new # RequestContactExport | Values to request a contact export

begin
  # Export contacts
  result = api_instance.request_contact_export(request_contact_export)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->request_contact_export: #{e}"
end
```

#### Using the request_contact_export_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatedProcessId>, Integer, Hash)> request_contact_export_with_http_info(request_contact_export)

```ruby
begin
  # Export contacts
  data, status_code, headers = api_instance.request_contact_export_with_http_info(request_contact_export)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatedProcessId>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->request_contact_export_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_contact_export** | [**RequestContactExport**](RequestContactExport.md) | Values to request a contact export |  |

### Return type

[**CreatedProcessId**](CreatedProcessId.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: application/json
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

api_instance = SibApiV3Sdk::ContactsApi.new
attribute_category = 'category' # String | Category of the attribute
attribute_name = 'attribute_name_example' # String | Name of the existing attribute
update_attribute = SibApiV3Sdk::UpdateAttribute.new # UpdateAttribute | Values to update an attribute

begin
  # Update contact attribute
  api_instance.update_attribute(attribute_category, attribute_name, update_attribute)
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->update_attribute: #{e}"
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
  puts "Error when calling ContactsApi->update_attribute_with_http_info: #{e}"
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


## update_contact

> update_contact(identifier, update_contact)

Update a contact

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

api_instance = SibApiV3Sdk::ContactsApi.new
identifier = 'identifier_example' # String | Email (urlencoded) OR ID of the contact
update_contact = SibApiV3Sdk::UpdateContact.new # UpdateContact | Values to update a contact

begin
  # Update a contact
  api_instance.update_contact(identifier, update_contact)
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->update_contact: #{e}"
end
```

#### Using the update_contact_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_contact_with_http_info(identifier, update_contact)

```ruby
begin
  # Update a contact
  data, status_code, headers = api_instance.update_contact_with_http_info(identifier, update_contact)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->update_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **identifier** | **String** | Email (urlencoded) OR ID of the contact |  |
| **update_contact** | [**UpdateContact**](UpdateContact.md) | Values to update a contact |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_folder

> update_folder(folder_id, update_folder)

Update a folder

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

api_instance = SibApiV3Sdk::ContactsApi.new
folder_id = 789 # Integer | Id of the folder
update_folder = SibApiV3Sdk::CreateUpdateFolder.new # CreateUpdateFolder | Name of the folder

begin
  # Update a folder
  api_instance.update_folder(folder_id, update_folder)
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->update_folder: #{e}"
end
```

#### Using the update_folder_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_folder_with_http_info(folder_id, update_folder)

```ruby
begin
  # Update a folder
  data, status_code, headers = api_instance.update_folder_with_http_info(folder_id, update_folder)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->update_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | Id of the folder |  |
| **update_folder** | [**CreateUpdateFolder**](CreateUpdateFolder.md) | Name of the folder |  |

### Return type

nil (empty response body)

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

api_instance = SibApiV3Sdk::ContactsApi.new
list_id = 789 # Integer | Id of the list
update_list = SibApiV3Sdk::UpdateList.new # UpdateList | Values to update a list

begin
  # Update a list
  api_instance.update_list(list_id, update_list)
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ContactsApi->update_list: #{e}"
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
  puts "Error when calling ContactsApi->update_list_with_http_info: #{e}"
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

