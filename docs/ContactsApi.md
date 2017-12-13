# SibApiV3Sdk::ContactsApi

All URIs are relative to *https://api.sendinblue.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_contact_to_list**](ContactsApi.md#add_contact_to_list) | **POST** /contacts/lists/{listId}/contacts/add | Add existing contacts to a list
[**create_attribute**](ContactsApi.md#create_attribute) | **POST** /contacts/attributes/{attributeCategory}/{attributeName} | Creates contact attribute
[**create_contact**](ContactsApi.md#create_contact) | **POST** /contacts | Create a contact
[**create_folder**](ContactsApi.md#create_folder) | **POST** /contacts/folders | Create a folder
[**create_list**](ContactsApi.md#create_list) | **POST** /contacts/lists | Create a list
[**delete_attribute**](ContactsApi.md#delete_attribute) | **DELETE** /contacts/attributes/{attributeCategory}/{attributeName} | Deletes an attribute
[**delete_folder**](ContactsApi.md#delete_folder) | **DELETE** /contacts/folders/{folderId} | Delete a folder (and all its lists)
[**delete_list**](ContactsApi.md#delete_list) | **DELETE** /contacts/lists/{listId} | Delete a list
[**get_attributes**](ContactsApi.md#get_attributes) | **GET** /contacts/attributes | Lists all attributes
[**get_contact_info**](ContactsApi.md#get_contact_info) | **GET** /contacts/{email} | Retrieves contact informations
[**get_contact_stats**](ContactsApi.md#get_contact_stats) | **GET** /contacts/{email}/campaignStats | Get the campaigns statistics for a contact
[**get_contacts**](ContactsApi.md#get_contacts) | **GET** /contacts | Get all the contacts
[**get_contacts_from_list**](ContactsApi.md#get_contacts_from_list) | **GET** /contacts/lists/{listId}/contacts | Get the contacts in a list
[**get_folder**](ContactsApi.md#get_folder) | **GET** /contacts/folders/{folderId} | Returns folder details
[**get_folder_lists**](ContactsApi.md#get_folder_lists) | **GET** /contacts/folders/{folderId}/lists | Get the lists in a folder
[**get_folders**](ContactsApi.md#get_folders) | **GET** /contacts/folders | Get all the folders
[**get_list**](ContactsApi.md#get_list) | **GET** /contacts/lists/{listId} | Get the details of a list
[**get_lists**](ContactsApi.md#get_lists) | **GET** /contacts/lists | Get all the lists
[**import_contacts**](ContactsApi.md#import_contacts) | **POST** /contacts/import | Import contacts
[**remove_contact_to_list**](ContactsApi.md#remove_contact_to_list) | **POST** /contacts/lists/{listId}/contacts/remove | Remove existing contacts from a list
[**request_contact_export**](ContactsApi.md#request_contact_export) | **POST** /contacts/export | Export contacts
[**update_attribute**](ContactsApi.md#update_attribute) | **PUT** /contacts/attributes/{attributeCategory}/{attributeName} | Updates contact attribute
[**update_contact**](ContactsApi.md#update_contact) | **PUT** /contacts/{email} | Updates a contact
[**update_folder**](ContactsApi.md#update_folder) | **PUT** /contacts/folders/{folderId} | Update a contact folder
[**update_list**](ContactsApi.md#update_list) | **PUT** /contacts/lists/{listId} | Update a list


# **add_contact_to_list**
> PostContactInfo add_contact_to_list(list_id, contact_emails)

Add existing contacts to a list

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
end

api_instance = SibApiV3Sdk::ContactsApi.new

list_id = 789 # Integer | Id of the list

contact_emails = SibApiV3Sdk::AddRemoveContactToList.new # AddRemoveContactToList | Emails addresses of the contacts


begin
  #Add existing contacts to a list
  result = api_instance.add_contact_to_list(list_id, contact_emails)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ContactsApi->add_contact_to_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| Id of the list | 
 **contact_emails** | [**AddRemoveContactToList**](AddRemoveContactToList.md)| Emails addresses of the contacts | 

### Return type

[**PostContactInfo**](PostContactInfo.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_attribute**
> create_attribute(attribute_category, attribute_name, create_attribute)

Creates contact attribute

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
end

api_instance = SibApiV3Sdk::ContactsApi.new

attribute_category = "attribute_category_example" # String | Category of the attribute

attribute_name = "attribute_name_example" # String | Name of the attribute

create_attribute = SibApiV3Sdk::CreateAttribute.new # CreateAttribute | Values to create an attribute


begin
  #Creates contact attribute
  api_instance.create_attribute(attribute_category, attribute_name, create_attribute)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ContactsApi->create_attribute: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attribute_category** | **String**| Category of the attribute | 
 **attribute_name** | **String**| Name of the attribute | 
 **create_attribute** | [**CreateAttribute**](CreateAttribute.md)| Values to create an attribute | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_contact**
> CreateModel create_contact(create_contact)

Create a contact

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
end

api_instance = SibApiV3Sdk::ContactsApi.new

create_contact = SibApiV3Sdk::CreateContact.new # CreateContact | Values to create a contact


begin
  #Create a contact
  result = api_instance.create_contact(create_contact)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ContactsApi->create_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_contact** | [**CreateContact**](CreateContact.md)| Values to create a contact | 

### Return type

[**CreateModel**](CreateModel.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



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
end

api_instance = SibApiV3Sdk::ContactsApi.new

create_folder = SibApiV3Sdk::CreateUpdateFolder.new # CreateUpdateFolder | Name of the folder


begin
  #Create a folder
  result = api_instance.create_folder(create_folder)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ContactsApi->create_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_folder** | [**CreateUpdateFolder**](CreateUpdateFolder.md)| Name of the folder | 

### Return type

[**CreateModel**](CreateModel.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_list**
> CreateModel create_list(create_list)

Create a list

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
end

api_instance = SibApiV3Sdk::ContactsApi.new

create_list = SibApiV3Sdk::CreateList.new # CreateList | Values to create a list


begin
  #Create a list
  result = api_instance.create_list(create_list)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ContactsApi->create_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_list** | [**CreateList**](CreateList.md)| Values to create a list | 

### Return type

[**CreateModel**](CreateModel.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_attribute**
> delete_attribute(attribute_category, attribute_name)

Deletes an attribute

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
end

api_instance = SibApiV3Sdk::ContactsApi.new

attribute_category = "attribute_category_example" # String | Category of the attribute

attribute_name = "attribute_name_example" # String | Name of the existing attribute


begin
  #Deletes an attribute
  api_instance.delete_attribute(attribute_category, attribute_name)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ContactsApi->delete_attribute: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attribute_category** | **String**| Category of the attribute | 
 **attribute_name** | **String**| Name of the existing attribute | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

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
end

api_instance = SibApiV3Sdk::ContactsApi.new

folder_id = 789 # Integer | Id of the folder


begin
  #Delete a folder (and all its lists)
  api_instance.delete_folder(folder_id)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ContactsApi->delete_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder_id** | **Integer**| Id of the folder | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_list**
> delete_list(list_id)

Delete a list

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
end

api_instance = SibApiV3Sdk::ContactsApi.new

list_id = 789 # Integer | Id of the list


begin
  #Delete a list
  api_instance.delete_list(list_id)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ContactsApi->delete_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| Id of the list | 

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
require 'sib-api-v3-sdk'
# setup authorization
SibApiV3Sdk.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = SibApiV3Sdk::ContactsApi.new

begin
  #Lists all attributes
  result = api_instance.get_attributes
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ContactsApi->get_attributes: #{e}"
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



# **get_contact_info**
> GetExtendedContactDetails get_contact_info(email)

Retrieves contact informations

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
end

api_instance = SibApiV3Sdk::ContactsApi.new

email = "email_example" # String | Email (urlencoded) of the contact


begin
  #Retrieves contact informations
  result = api_instance.get_contact_info(email)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ContactsApi->get_contact_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| Email (urlencoded) of the contact | 

### Return type

[**GetExtendedContactDetails**](GetExtendedContactDetails.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_contact_stats**
> GetContactCampaignStats get_contact_stats(email)

Get the campaigns statistics for a contact

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
end

api_instance = SibApiV3Sdk::ContactsApi.new

email = "email_example" # String | Email address (urlencoded) of the contact


begin
  #Get the campaigns statistics for a contact
  result = api_instance.get_contact_stats(email)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ContactsApi->get_contact_stats: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| Email address (urlencoded) of the contact | 

### Return type

[**GetContactCampaignStats**](GetContactCampaignStats.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_contacts**
> GetContacts get_contacts(opts)

Get all the contacts

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
end

api_instance = SibApiV3Sdk::ContactsApi.new

opts = { 
  limit: 50, # Integer | Number of documents per page
  offset: 0, # Integer | Index of the first document of the page
  modified_since: DateTime.parse("2013-10-20T19:20:30+01:00") # DateTime | Filter (urlencoded) the contacts modified after a given date-time (YYYY-MM-DDTHH:mm:ss.SSSZ)
}

begin
  #Get all the contacts
  result = api_instance.get_contacts(opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ContactsApi->get_contacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Number of documents per page | [optional] [default to 50]
 **offset** | **Integer**| Index of the first document of the page | [optional] [default to 0]
 **modified_since** | **DateTime**| Filter (urlencoded) the contacts modified after a given date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) | [optional] 

### Return type

[**GetContacts**](GetContacts.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_contacts_from_list**
> GetContacts get_contacts_from_list(list_id, opts)

Get the contacts in a list

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
end

api_instance = SibApiV3Sdk::ContactsApi.new

list_id = 789 # Integer | Id of the list

opts = { 
  modified_since: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Filter (urlencoded) the contacts modified after a given date-time (YYYY-MM-DDTHH:mm:ss.SSSZ)
  limit: 50, # Integer | Number of documents per page
  offset: 0 # Integer | Index of the first document of the page
}

begin
  #Get the contacts in a list
  result = api_instance.get_contacts_from_list(list_id, opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ContactsApi->get_contacts_from_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| Id of the list | 
 **modified_since** | **DateTime**| Filter (urlencoded) the contacts modified after a given date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) | [optional] 
 **limit** | **Integer**| Number of documents per page | [optional] [default to 50]
 **offset** | **Integer**| Index of the first document of the page | [optional] [default to 0]

### Return type

[**GetContacts**](GetContacts.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_folder**
> GetFolder get_folder(folder_id)

Returns folder details

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
end

api_instance = SibApiV3Sdk::ContactsApi.new

folder_id = 789 # Integer | id of the folder


begin
  #Returns folder details
  result = api_instance.get_folder(folder_id)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ContactsApi->get_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder_id** | **Integer**| id of the folder | 

### Return type

[**GetFolder**](GetFolder.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_folder_lists**
> GetFolderLists get_folder_lists(folder_id, opts)

Get the lists in a folder

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
end

api_instance = SibApiV3Sdk::ContactsApi.new

folder_id = 789 # Integer | Id of the folder

opts = { 
  limit: 10, # Integer | Number of documents per page
  offset: 0 # Integer | Index of the first document of the page
}

begin
  #Get the lists in a folder
  result = api_instance.get_folder_lists(folder_id, opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ContactsApi->get_folder_lists: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder_id** | **Integer**| Id of the folder | 
 **limit** | **Integer**| Number of documents per page | [optional] [default to 10]
 **offset** | **Integer**| Index of the first document of the page | [optional] [default to 0]

### Return type

[**GetFolderLists**](GetFolderLists.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_folders**
> GetFolders get_folders(limit, offset)

Get all the folders

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
end

api_instance = SibApiV3Sdk::ContactsApi.new

limit = 10 # Integer | Number of documents per page

offset = 0 # Integer | Index of the first document of the page


begin
  #Get all the folders
  result = api_instance.get_folders(limit, offset)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ContactsApi->get_folders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Number of documents per page | [default to 10]
 **offset** | **Integer**| Index of the first document of the page | [default to 0]

### Return type

[**GetFolders**](GetFolders.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_list**
> GetExtendedList get_list(list_id)

Get the details of a list

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
end

api_instance = SibApiV3Sdk::ContactsApi.new

list_id = 789 # Integer | Id of the list


begin
  #Get the details of a list
  result = api_instance.get_list(list_id)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ContactsApi->get_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| Id of the list | 

### Return type

[**GetExtendedList**](GetExtendedList.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_lists**
> GetLists get_lists(opts)

Get all the lists

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
end

api_instance = SibApiV3Sdk::ContactsApi.new

opts = { 
  limit: 10, # Integer | Number of documents per page
  offset: 0 # Integer | Index of the first document of the page
}

begin
  #Get all the lists
  result = api_instance.get_lists(opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ContactsApi->get_lists: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Number of documents per page | [optional] [default to 10]
 **offset** | **Integer**| Index of the first document of the page | [optional] [default to 0]

### Return type

[**GetLists**](GetLists.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **import_contacts**
> CreatedProcessId import_contacts(request_contact_import)

Import contacts

It returns the background process ID which on completion calls the notify URL that you have set in the input.

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
end

api_instance = SibApiV3Sdk::ContactsApi.new

request_contact_import = SibApiV3Sdk::RequestContactImport.new # RequestContactImport | Values to import contacts in Sendinblue. To know more about the expected format, please have a look at ``https://help.sendinblue.com/hc/en-us/articles/209499265-Build-contacts-lists-for-your-email-marketing-campaigns``


begin
  #Import contacts
  result = api_instance.import_contacts(request_contact_import)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ContactsApi->import_contacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_contact_import** | [**RequestContactImport**](RequestContactImport.md)| Values to import contacts in Sendinblue. To know more about the expected format, please have a look at &#x60;&#x60;https://help.sendinblue.com/hc/en-us/articles/209499265-Build-contacts-lists-for-your-email-marketing-campaigns&#x60;&#x60; | 

### Return type

[**CreatedProcessId**](CreatedProcessId.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **remove_contact_to_list**
> PostContactInfo remove_contact_to_list(list_id, contact_emails)

Remove existing contacts from a list

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
end

api_instance = SibApiV3Sdk::ContactsApi.new

list_id = 789 # Integer | Id of the list

contact_emails = SibApiV3Sdk::AddRemoveContactToList.new # AddRemoveContactToList | Emails adresses of the contact


begin
  #Remove existing contacts from a list
  result = api_instance.remove_contact_to_list(list_id, contact_emails)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ContactsApi->remove_contact_to_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| Id of the list | 
 **contact_emails** | [**AddRemoveContactToList**](AddRemoveContactToList.md)| Emails adresses of the contact | 

### Return type

[**PostContactInfo**](PostContactInfo.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **request_contact_export**
> CreatedProcessId request_contact_export(request_contact_export)

Export contacts

It returns the background process ID which on completion calls the notify URL that you have set in the input. File will be available in csv.

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
end

api_instance = SibApiV3Sdk::ContactsApi.new

request_contact_export = SibApiV3Sdk::RequestContactExport.new # RequestContactExport | Values to request a contact export


begin
  #Export contacts
  result = api_instance.request_contact_export(request_contact_export)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ContactsApi->request_contact_export: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_contact_export** | [**RequestContactExport**](RequestContactExport.md)| Values to request a contact export | 

### Return type

[**CreatedProcessId**](CreatedProcessId.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_attribute**
> update_attribute(attribute_category, attribute_name, update_attribute)

Updates contact attribute

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
end

api_instance = SibApiV3Sdk::ContactsApi.new

attribute_category = "attribute_category_example" # String | Category of the attribute

attribute_name = "attribute_name_example" # String | Name of the existing attribute

update_attribute = SibApiV3Sdk::UpdateAttribute.new # UpdateAttribute | Values to update an attribute


begin
  #Updates contact attribute
  api_instance.update_attribute(attribute_category, attribute_name, update_attribute)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ContactsApi->update_attribute: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attribute_category** | **String**| Category of the attribute | 
 **attribute_name** | **String**| Name of the existing attribute | 
 **update_attribute** | [**UpdateAttribute**](UpdateAttribute.md)| Values to update an attribute | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_contact**
> update_contact(email, update_contact)

Updates a contact

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
end

api_instance = SibApiV3Sdk::ContactsApi.new

email = "email_example" # String | Email (urlencoded) of the contact

update_contact = SibApiV3Sdk::UpdateContact.new # UpdateContact | Values to update a contact


begin
  #Updates a contact
  api_instance.update_contact(email, update_contact)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ContactsApi->update_contact: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| Email (urlencoded) of the contact | 
 **update_contact** | [**UpdateContact**](UpdateContact.md)| Values to update a contact | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_folder**
> update_folder(folder_id, update_folder)

Update a contact folder

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
end

api_instance = SibApiV3Sdk::ContactsApi.new

folder_id = 789 # Integer | Id of the folder

update_folder = SibApiV3Sdk::CreateUpdateFolder.new # CreateUpdateFolder | Name of the folder


begin
  #Update a contact folder
  api_instance.update_folder(folder_id, update_folder)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ContactsApi->update_folder: #{e}"
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

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_list**
> update_list(list_id, update_list)

Update a list

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
end

api_instance = SibApiV3Sdk::ContactsApi.new

list_id = 789 # Integer | Id of the list

update_list = SibApiV3Sdk::UpdateList.new # UpdateList | Values to update a list


begin
  #Update a list
  api_instance.update_list(list_id, update_list)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ContactsApi->update_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| Id of the list | 
 **update_list** | [**UpdateList**](UpdateList.md)| Values to update a list | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



