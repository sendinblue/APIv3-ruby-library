# SibApiV3Sdk::ResellerApi

All URIs are relative to *https://api.sendinblue.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_credits**](ResellerApi.md#add_credits) | **POST** /reseller/children/{childId}/credits/add | Add Email and/or SMS credits to a specific child account
[**associate_ip_to_child**](ResellerApi.md#associate_ip_to_child) | **POST** /reseller/children/{childId}/ips/associate | Associate a dedicated IP to the child
[**create_reseller_child**](ResellerApi.md#create_reseller_child) | **POST** /reseller/children | Creates a reseller child
[**delete_reseller_child**](ResellerApi.md#delete_reseller_child) | **DELETE** /reseller/children/{childId} | Deletes a single reseller child based on the childId supplied
[**dissociate_ip_from_child**](ResellerApi.md#dissociate_ip_from_child) | **POST** /reseller/children/{childId}/ips/dissociate | Dissociate a dedicated IP to the child
[**get_child_info**](ResellerApi.md#get_child_info) | **GET** /reseller/children/{childId} | Gets the info about a specific child account
[**get_reseller_childs**](ResellerApi.md#get_reseller_childs) | **GET** /reseller/children | Gets the list of all reseller&#39;s children accounts
[**remove_credits**](ResellerApi.md#remove_credits) | **POST** /reseller/children/{childId}/credits/remove | Remove Email and/or SMS credits from a specific child account
[**update_reseller_child**](ResellerApi.md#update_reseller_child) | **PUT** /reseller/children/{childId} | Updates infos of reseller&#39;s child based on the childId supplied


# **add_credits**
> RemainingCreditModel add_credits(child_id, add_credits)

Add Email and/or SMS credits to a specific child account

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

api_instance = SibApiV3Sdk::ResellerApi.new

child_id = 789 # Integer | id of reseller's child

add_credits = SibApiV3Sdk::AddCredits.new # AddCredits | Values to post to add credit to a specific child account


begin
  #Add Email and/or SMS credits to a specific child account
  result = api_instance.add_credits(child_id, add_credits)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ResellerApi->add_credits: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **child_id** | **Integer**| id of reseller&#39;s child | 
 **add_credits** | [**AddCredits**](AddCredits.md)| Values to post to add credit to a specific child account | 

### Return type

[**RemainingCreditModel**](RemainingCreditModel.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **associate_ip_to_child**
> associate_ip_to_child(child_id, ip_id)

Associate a dedicated IP to the child

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

api_instance = SibApiV3Sdk::ResellerApi.new

child_id = 789 # Integer | id of reseller's child

ip_id = SibApiV3Sdk::ManageIp.new # ManageIp | IP's id


begin
  #Associate a dedicated IP to the child
  api_instance.associate_ip_to_child(child_id, ip_id)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ResellerApi->associate_ip_to_child: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **child_id** | **Integer**| id of reseller&#39;s child | 
 **ip_id** | [**ManageIp**](ManageIp.md)| IP&#39;s id | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_reseller_child**
> CreateModel create_reseller_child(opts)

Creates a reseller child

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

api_instance = SibApiV3Sdk::ResellerApi.new

opts = { 
  reseller_child: SibApiV3Sdk::CreateChild.new # CreateChild | reseller child to add
}

begin
  #Creates a reseller child
  result = api_instance.create_reseller_child(opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ResellerApi->create_reseller_child: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reseller_child** | [**CreateChild**](CreateChild.md)| reseller child to add | [optional] 

### Return type

[**CreateModel**](CreateModel.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_reseller_child**
> delete_reseller_child(child_id)

Deletes a single reseller child based on the childId supplied

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

api_instance = SibApiV3Sdk::ResellerApi.new

child_id = 789 # Integer | id of reseller's child


begin
  #Deletes a single reseller child based on the childId supplied
  api_instance.delete_reseller_child(child_id)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ResellerApi->delete_reseller_child: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **child_id** | **Integer**| id of reseller&#39;s child | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **dissociate_ip_from_child**
> dissociate_ip_from_child(child_id, ip_id)

Dissociate a dedicated IP to the child

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

api_instance = SibApiV3Sdk::ResellerApi.new

child_id = 789 # Integer | id of reseller's child

ip_id = SibApiV3Sdk::ManageIp.new # ManageIp | IP's id


begin
  #Dissociate a dedicated IP to the child
  api_instance.dissociate_ip_from_child(child_id, ip_id)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ResellerApi->dissociate_ip_from_child: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **child_id** | **Integer**| id of reseller&#39;s child | 
 **ip_id** | [**ManageIp**](ManageIp.md)| IP&#39;s id | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_child_info**
> GetChildInfo get_child_info(child_id)

Gets the info about a specific child account

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

api_instance = SibApiV3Sdk::ResellerApi.new

child_id = 789 # Integer | id of reseller's child


begin
  #Gets the info about a specific child account
  result = api_instance.get_child_info(child_id)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ResellerApi->get_child_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **child_id** | **Integer**| id of reseller&#39;s child | 

### Return type

[**GetChildInfo**](GetChildInfo.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_reseller_childs**
> GetChildrenList get_reseller_childs

Gets the list of all reseller's children accounts

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

api_instance = SibApiV3Sdk::ResellerApi.new

begin
  #Gets the list of all reseller's children accounts
  result = api_instance.get_reseller_childs
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ResellerApi->get_reseller_childs: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetChildrenList**](GetChildrenList.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **remove_credits**
> RemainingCreditModel remove_credits(child_id, remove_credits)

Remove Email and/or SMS credits from a specific child account

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

api_instance = SibApiV3Sdk::ResellerApi.new

child_id = 789 # Integer | id of reseller's child

remove_credits = SibApiV3Sdk::RemoveCredits.new # RemoveCredits | Values to post to remove email or SMS credits from a specific child account


begin
  #Remove Email and/or SMS credits from a specific child account
  result = api_instance.remove_credits(child_id, remove_credits)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ResellerApi->remove_credits: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **child_id** | **Integer**| id of reseller&#39;s child | 
 **remove_credits** | [**RemoveCredits**](RemoveCredits.md)| Values to post to remove email or SMS credits from a specific child account | 

### Return type

[**RemainingCreditModel**](RemainingCreditModel.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_reseller_child**
> update_reseller_child(child_id, reseller_child)

Updates infos of reseller's child based on the childId supplied

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

api_instance = SibApiV3Sdk::ResellerApi.new

child_id = 789 # Integer | id of reseller's child

reseller_child = SibApiV3Sdk::UpdateChild.new # UpdateChild | values to update in child profile


begin
  #Updates infos of reseller's child based on the childId supplied
  api_instance.update_reseller_child(child_id, reseller_child)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling ResellerApi->update_reseller_child: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **child_id** | **Integer**| id of reseller&#39;s child | 
 **reseller_child** | [**UpdateChild**](UpdateChild.md)| values to update in child profile | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



