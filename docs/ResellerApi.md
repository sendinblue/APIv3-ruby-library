# SibApiV3Sdk::ResellerApi

All URIs are relative to *https://api.sendinblue.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_credits**](ResellerApi.md#add_credits) | **POST** /reseller/children/{childIdentifier}/credits/add | Add Email and/or SMS credits to a specific child account |
| [**associate_ip_to_child**](ResellerApi.md#associate_ip_to_child) | **POST** /reseller/children/{childIdentifier}/ips/associate | Associate a dedicated IP to the child |
| [**create_child_domain**](ResellerApi.md#create_child_domain) | **POST** /reseller/children/{childIdentifier}/domains | Create a domain for a child account |
| [**create_reseller_child**](ResellerApi.md#create_reseller_child) | **POST** /reseller/children | Creates a reseller child |
| [**delete_child_domain**](ResellerApi.md#delete_child_domain) | **DELETE** /reseller/children/{childIdentifier}/domains/{domainName} | Delete the sender domain of the reseller child based on the childIdentifier and domainName passed |
| [**delete_reseller_child**](ResellerApi.md#delete_reseller_child) | **DELETE** /reseller/children/{childIdentifier} | Delete a single reseller child based on the child identifier supplied |
| [**dissociate_ip_from_child**](ResellerApi.md#dissociate_ip_from_child) | **POST** /reseller/children/{childIdentifier}/ips/dissociate | Dissociate a dedicated IP to the child |
| [**get_child_account_creation_status**](ResellerApi.md#get_child_account_creation_status) | **GET** /reseller/children/{childIdentifier}/accountCreationStatus | Get the status of a reseller&#39;s child account creation, whether it is successfully created (exists) or not based on the identifier supplied |
| [**get_child_domains**](ResellerApi.md#get_child_domains) | **GET** /reseller/children/{childIdentifier}/domains | Get all sender domains for a specific child account |
| [**get_child_info**](ResellerApi.md#get_child_info) | **GET** /reseller/children/{childIdentifier} | Get a child account&#39;s details |
| [**get_reseller_childs**](ResellerApi.md#get_reseller_childs) | **GET** /reseller/children | Get the list of all children accounts |
| [**get_sso_token**](ResellerApi.md#get_sso_token) | **GET** /reseller/children/{childIdentifier}/auth | Get session token to access Sendinblue (SSO) |
| [**remove_credits**](ResellerApi.md#remove_credits) | **POST** /reseller/children/{childIdentifier}/credits/remove | Remove Email and/or SMS credits from a specific child account |
| [**update_child_account_status**](ResellerApi.md#update_child_account_status) | **PUT** /reseller/children/{childIdentifier}/accountStatus | Update info of reseller&#39;s child account status based on the childIdentifier supplied |
| [**update_child_domain**](ResellerApi.md#update_child_domain) | **PUT** /reseller/children/{childIdentifier}/domains/{domainName} | Update the sender domain of reseller&#39;s child based on the childIdentifier and domainName passed |
| [**update_reseller_child**](ResellerApi.md#update_reseller_child) | **PUT** /reseller/children/{childIdentifier} | Update info of reseller&#39;s child based on the child identifier supplied |


## add_credits

> <RemainingCreditModel> add_credits(child_identifier, add_credits)

Add Email and/or SMS credits to a specific child account

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

api_instance = SibApiV3Sdk::ResellerApi.new
child_identifier = 'child_identifier_example' # String | Either auth key or id of reseller's child
add_credits = SibApiV3Sdk::AddCredits.new # AddCredits | Values to post to add credit to a specific child account

begin
  # Add Email and/or SMS credits to a specific child account
  result = api_instance.add_credits(child_identifier, add_credits)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ResellerApi->add_credits: #{e}"
end
```

#### Using the add_credits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemainingCreditModel>, Integer, Hash)> add_credits_with_http_info(child_identifier, add_credits)

```ruby
begin
  # Add Email and/or SMS credits to a specific child account
  data, status_code, headers = api_instance.add_credits_with_http_info(child_identifier, add_credits)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemainingCreditModel>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ResellerApi->add_credits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **child_identifier** | **String** | Either auth key or id of reseller&#39;s child |  |
| **add_credits** | [**AddCredits**](AddCredits.md) | Values to post to add credit to a specific child account |  |

### Return type

[**RemainingCreditModel**](RemainingCreditModel.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## associate_ip_to_child

> associate_ip_to_child(child_identifier, ip)

Associate a dedicated IP to the child

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

api_instance = SibApiV3Sdk::ResellerApi.new
child_identifier = 'child_identifier_example' # String | Either auth key or id of reseller's child
ip = SibApiV3Sdk::ManageIp.new # ManageIp | IP to associate

begin
  # Associate a dedicated IP to the child
  api_instance.associate_ip_to_child(child_identifier, ip)
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ResellerApi->associate_ip_to_child: #{e}"
end
```

#### Using the associate_ip_to_child_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> associate_ip_to_child_with_http_info(child_identifier, ip)

```ruby
begin
  # Associate a dedicated IP to the child
  data, status_code, headers = api_instance.associate_ip_to_child_with_http_info(child_identifier, ip)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ResellerApi->associate_ip_to_child_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **child_identifier** | **String** | Either auth key or id of reseller&#39;s child |  |
| **ip** | [**ManageIp**](ManageIp.md) | IP to associate |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_child_domain

> create_child_domain(child_identifier, add_child_domain)

Create a domain for a child account

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

api_instance = SibApiV3Sdk::ResellerApi.new
child_identifier = 'child_identifier_example' # String | Either auth key or id of reseller's child
add_child_domain = SibApiV3Sdk::AddChildDomain.new # AddChildDomain | Sender domain to add for a specific child account. This will not be displayed to the parent account.

begin
  # Create a domain for a child account
  api_instance.create_child_domain(child_identifier, add_child_domain)
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ResellerApi->create_child_domain: #{e}"
end
```

#### Using the create_child_domain_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_child_domain_with_http_info(child_identifier, add_child_domain)

```ruby
begin
  # Create a domain for a child account
  data, status_code, headers = api_instance.create_child_domain_with_http_info(child_identifier, add_child_domain)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ResellerApi->create_child_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **child_identifier** | **String** | Either auth key or id of reseller&#39;s child |  |
| **add_child_domain** | [**AddChildDomain**](AddChildDomain.md) | Sender domain to add for a specific child account. This will not be displayed to the parent account. |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_reseller_child

> <CreateReseller> create_reseller_child(opts)

Creates a reseller child

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

api_instance = SibApiV3Sdk::ResellerApi.new
opts = {
  reseller_child: SibApiV3Sdk::CreateChild.new({email: 'josh.cruise@example.com', first_name: 'Josh', last_name: 'Cruise', company_name: 'Your Company', password: 'Pa55w0rd65'}) # CreateChild | reseller child to add
}

begin
  # Creates a reseller child
  result = api_instance.create_reseller_child(opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ResellerApi->create_reseller_child: #{e}"
end
```

#### Using the create_reseller_child_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateReseller>, Integer, Hash)> create_reseller_child_with_http_info(opts)

```ruby
begin
  # Creates a reseller child
  data, status_code, headers = api_instance.create_reseller_child_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateReseller>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ResellerApi->create_reseller_child_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reseller_child** | [**CreateChild**](CreateChild.md) | reseller child to add | [optional] |

### Return type

[**CreateReseller**](CreateReseller.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_child_domain

> delete_child_domain(child_identifier, domain_name)

Delete the sender domain of the reseller child based on the childIdentifier and domainName passed

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

api_instance = SibApiV3Sdk::ResellerApi.new
child_identifier = 'child_identifier_example' # String | Either auth key or id of reseller's child
domain_name = 'domain_name_example' # String | Pass the existing domain that needs to be deleted

begin
  # Delete the sender domain of the reseller child based on the childIdentifier and domainName passed
  api_instance.delete_child_domain(child_identifier, domain_name)
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ResellerApi->delete_child_domain: #{e}"
end
```

#### Using the delete_child_domain_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_child_domain_with_http_info(child_identifier, domain_name)

```ruby
begin
  # Delete the sender domain of the reseller child based on the childIdentifier and domainName passed
  data, status_code, headers = api_instance.delete_child_domain_with_http_info(child_identifier, domain_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ResellerApi->delete_child_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **child_identifier** | **String** | Either auth key or id of reseller&#39;s child |  |
| **domain_name** | **String** | Pass the existing domain that needs to be deleted |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_reseller_child

> delete_reseller_child(child_identifier)

Delete a single reseller child based on the child identifier supplied

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

api_instance = SibApiV3Sdk::ResellerApi.new
child_identifier = 'child_identifier_example' # String | Either auth key or child id of reseller's child

begin
  # Delete a single reseller child based on the child identifier supplied
  api_instance.delete_reseller_child(child_identifier)
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ResellerApi->delete_reseller_child: #{e}"
end
```

#### Using the delete_reseller_child_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_reseller_child_with_http_info(child_identifier)

```ruby
begin
  # Delete a single reseller child based on the child identifier supplied
  data, status_code, headers = api_instance.delete_reseller_child_with_http_info(child_identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ResellerApi->delete_reseller_child_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **child_identifier** | **String** | Either auth key or child id of reseller&#39;s child |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## dissociate_ip_from_child

> dissociate_ip_from_child(child_identifier, ip)

Dissociate a dedicated IP to the child

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

api_instance = SibApiV3Sdk::ResellerApi.new
child_identifier = 'child_identifier_example' # String | Either auth key or id of reseller's child
ip = SibApiV3Sdk::ManageIp.new # ManageIp | IP to dissociate

begin
  # Dissociate a dedicated IP to the child
  api_instance.dissociate_ip_from_child(child_identifier, ip)
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ResellerApi->dissociate_ip_from_child: #{e}"
end
```

#### Using the dissociate_ip_from_child_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dissociate_ip_from_child_with_http_info(child_identifier, ip)

```ruby
begin
  # Dissociate a dedicated IP to the child
  data, status_code, headers = api_instance.dissociate_ip_from_child_with_http_info(child_identifier, ip)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ResellerApi->dissociate_ip_from_child_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **child_identifier** | **String** | Either auth key or id of reseller&#39;s child |  |
| **ip** | [**ManageIp**](ManageIp.md) | IP to dissociate |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_child_account_creation_status

> <GetChildAccountCreationStatus> get_child_account_creation_status(child_identifier)

Get the status of a reseller's child account creation, whether it is successfully created (exists) or not based on the identifier supplied

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

api_instance = SibApiV3Sdk::ResellerApi.new
child_identifier = 'child_identifier_example' # String | Either auth key or id of reseller's child

begin
  # Get the status of a reseller's child account creation, whether it is successfully created (exists) or not based on the identifier supplied
  result = api_instance.get_child_account_creation_status(child_identifier)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ResellerApi->get_child_account_creation_status: #{e}"
end
```

#### Using the get_child_account_creation_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetChildAccountCreationStatus>, Integer, Hash)> get_child_account_creation_status_with_http_info(child_identifier)

```ruby
begin
  # Get the status of a reseller's child account creation, whether it is successfully created (exists) or not based on the identifier supplied
  data, status_code, headers = api_instance.get_child_account_creation_status_with_http_info(child_identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetChildAccountCreationStatus>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ResellerApi->get_child_account_creation_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **child_identifier** | **String** | Either auth key or id of reseller&#39;s child |  |

### Return type

[**GetChildAccountCreationStatus**](GetChildAccountCreationStatus.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_child_domains

> <Array<GetChildDomain>> get_child_domains(child_identifier)

Get all sender domains for a specific child account

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

api_instance = SibApiV3Sdk::ResellerApi.new
child_identifier = 'child_identifier_example' # String | Either auth key or id of reseller's child

begin
  # Get all sender domains for a specific child account
  result = api_instance.get_child_domains(child_identifier)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ResellerApi->get_child_domains: #{e}"
end
```

#### Using the get_child_domains_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetChildDomain>>, Integer, Hash)> get_child_domains_with_http_info(child_identifier)

```ruby
begin
  # Get all sender domains for a specific child account
  data, status_code, headers = api_instance.get_child_domains_with_http_info(child_identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetChildDomain>>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ResellerApi->get_child_domains_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **child_identifier** | **String** | Either auth key or id of reseller&#39;s child |  |

### Return type

[**Array&lt;GetChildDomain&gt;**](GetChildDomain.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_child_info

> <GetChildInfo> get_child_info(child_identifier)

Get a child account's details

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

api_instance = SibApiV3Sdk::ResellerApi.new
child_identifier = 'child_identifier_example' # String | Either auth key or id of reseller's child

begin
  # Get a child account's details
  result = api_instance.get_child_info(child_identifier)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ResellerApi->get_child_info: #{e}"
end
```

#### Using the get_child_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetChildInfo>, Integer, Hash)> get_child_info_with_http_info(child_identifier)

```ruby
begin
  # Get a child account's details
  data, status_code, headers = api_instance.get_child_info_with_http_info(child_identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetChildInfo>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ResellerApi->get_child_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **child_identifier** | **String** | Either auth key or id of reseller&#39;s child |  |

### Return type

[**GetChildInfo**](GetChildInfo.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_reseller_childs

> <GetChildrenList> get_reseller_childs(opts)

Get the list of all children accounts

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

api_instance = SibApiV3Sdk::ResellerApi.new
opts = {
  limit: 789, # Integer | Number of documents for child accounts information per page
  offset: 789 # Integer | Index of the first document in the page
}

begin
  # Get the list of all children accounts
  result = api_instance.get_reseller_childs(opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ResellerApi->get_reseller_childs: #{e}"
end
```

#### Using the get_reseller_childs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetChildrenList>, Integer, Hash)> get_reseller_childs_with_http_info(opts)

```ruby
begin
  # Get the list of all children accounts
  data, status_code, headers = api_instance.get_reseller_childs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetChildrenList>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ResellerApi->get_reseller_childs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number of documents for child accounts information per page | [optional][default to 10] |
| **offset** | **Integer** | Index of the first document in the page | [optional][default to 0] |

### Return type

[**GetChildrenList**](GetChildrenList.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sso_token

> <GetSsoToken> get_sso_token(child_identifier)

Get session token to access Sendinblue (SSO)

It returns a session [token] which will remain valid for a short period of time. A child account will be able to access a white-labeled section by using the following url pattern => https:/email.mydomain.com/login/sso?token=[token]

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

api_instance = SibApiV3Sdk::ResellerApi.new
child_identifier = 'child_identifier_example' # String | Either auth key or id of reseller's child

begin
  # Get session token to access Sendinblue (SSO)
  result = api_instance.get_sso_token(child_identifier)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ResellerApi->get_sso_token: #{e}"
end
```

#### Using the get_sso_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSsoToken>, Integer, Hash)> get_sso_token_with_http_info(child_identifier)

```ruby
begin
  # Get session token to access Sendinblue (SSO)
  data, status_code, headers = api_instance.get_sso_token_with_http_info(child_identifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSsoToken>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ResellerApi->get_sso_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **child_identifier** | **String** | Either auth key or id of reseller&#39;s child |  |

### Return type

[**GetSsoToken**](GetSsoToken.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_credits

> <RemainingCreditModel> remove_credits(child_identifier, remove_credits)

Remove Email and/or SMS credits from a specific child account

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

api_instance = SibApiV3Sdk::ResellerApi.new
child_identifier = 'child_identifier_example' # String | Either auth key or id of reseller's child
remove_credits = SibApiV3Sdk::RemoveCredits.new # RemoveCredits | Values to post to remove email or SMS credits from a specific child account

begin
  # Remove Email and/or SMS credits from a specific child account
  result = api_instance.remove_credits(child_identifier, remove_credits)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ResellerApi->remove_credits: #{e}"
end
```

#### Using the remove_credits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemainingCreditModel>, Integer, Hash)> remove_credits_with_http_info(child_identifier, remove_credits)

```ruby
begin
  # Remove Email and/or SMS credits from a specific child account
  data, status_code, headers = api_instance.remove_credits_with_http_info(child_identifier, remove_credits)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemainingCreditModel>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ResellerApi->remove_credits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **child_identifier** | **String** | Either auth key or id of reseller&#39;s child |  |
| **remove_credits** | [**RemoveCredits**](RemoveCredits.md) | Values to post to remove email or SMS credits from a specific child account |  |

### Return type

[**RemainingCreditModel**](RemainingCreditModel.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_child_account_status

> update_child_account_status(child_identifier, update_child_account_status)

Update info of reseller's child account status based on the childIdentifier supplied

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

api_instance = SibApiV3Sdk::ResellerApi.new
child_identifier = 'child_identifier_example' # String | Either auth key or id of reseller's child
update_child_account_status = SibApiV3Sdk::UpdateChildAccountStatus.new # UpdateChildAccountStatus | values to update in child account status

begin
  # Update info of reseller's child account status based on the childIdentifier supplied
  api_instance.update_child_account_status(child_identifier, update_child_account_status)
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ResellerApi->update_child_account_status: #{e}"
end
```

#### Using the update_child_account_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_child_account_status_with_http_info(child_identifier, update_child_account_status)

```ruby
begin
  # Update info of reseller's child account status based on the childIdentifier supplied
  data, status_code, headers = api_instance.update_child_account_status_with_http_info(child_identifier, update_child_account_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ResellerApi->update_child_account_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **child_identifier** | **String** | Either auth key or id of reseller&#39;s child |  |
| **update_child_account_status** | [**UpdateChildAccountStatus**](UpdateChildAccountStatus.md) | values to update in child account status |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_child_domain

> update_child_domain(child_identifier, domain_name, update_child_domain)

Update the sender domain of reseller's child based on the childIdentifier and domainName passed

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

api_instance = SibApiV3Sdk::ResellerApi.new
child_identifier = 'child_identifier_example' # String | Either auth key or id of reseller's child
domain_name = 'domain_name_example' # String | Pass the existing domain that needs to be updated
update_child_domain = SibApiV3Sdk::UpdateChildDomain.new # UpdateChildDomain | value to update for sender domain

begin
  # Update the sender domain of reseller's child based on the childIdentifier and domainName passed
  api_instance.update_child_domain(child_identifier, domain_name, update_child_domain)
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ResellerApi->update_child_domain: #{e}"
end
```

#### Using the update_child_domain_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_child_domain_with_http_info(child_identifier, domain_name, update_child_domain)

```ruby
begin
  # Update the sender domain of reseller's child based on the childIdentifier and domainName passed
  data, status_code, headers = api_instance.update_child_domain_with_http_info(child_identifier, domain_name, update_child_domain)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ResellerApi->update_child_domain_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **child_identifier** | **String** | Either auth key or id of reseller&#39;s child |  |
| **domain_name** | **String** | Pass the existing domain that needs to be updated |  |
| **update_child_domain** | [**UpdateChildDomain**](UpdateChildDomain.md) | value to update for sender domain |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_reseller_child

> update_reseller_child(child_identifier, reseller_child)

Update info of reseller's child based on the child identifier supplied

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

api_instance = SibApiV3Sdk::ResellerApi.new
child_identifier = 'child_identifier_example' # String | Either auth key or id of reseller's child
reseller_child = SibApiV3Sdk::UpdateChild.new # UpdateChild | values to update in child profile

begin
  # Update info of reseller's child based on the child identifier supplied
  api_instance.update_reseller_child(child_identifier, reseller_child)
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ResellerApi->update_reseller_child: #{e}"
end
```

#### Using the update_reseller_child_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_reseller_child_with_http_info(child_identifier, reseller_child)

```ruby
begin
  # Update info of reseller's child based on the child identifier supplied
  data, status_code, headers = api_instance.update_reseller_child_with_http_info(child_identifier, reseller_child)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling ResellerApi->update_reseller_child_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **child_identifier** | **String** | Either auth key or id of reseller&#39;s child |  |
| **reseller_child** | [**UpdateChild**](UpdateChild.md) | values to update in child profile |  |

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

