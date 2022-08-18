# SibApiV3Sdk::TransactionalEmailsApi

All URIs are relative to *https://api.sendinblue.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**block_new_domain**](TransactionalEmailsApi.md#block_new_domain) | **POST** /smtp/blockedDomains | Add a new domain to the list of blocked domains
[**create_smtp_template**](TransactionalEmailsApi.md#create_smtp_template) | **POST** /smtp/templates | Create an email template
[**delete_blocked_domain**](TransactionalEmailsApi.md#delete_blocked_domain) | **DELETE** /smtp/blockedDomains/{domain} | Unblock an existing domain from the list of blocked domains
[**delete_hardbounces**](TransactionalEmailsApi.md#delete_hardbounces) | **POST** /smtp/deleteHardbounces | Delete hardbounces
[**delete_scheduled_email_by_id**](TransactionalEmailsApi.md#delete_scheduled_email_by_id) | **DELETE** /smtp/email/{identifier} | Delete scheduled emails by batchId or messageId
[**delete_smtp_template**](TransactionalEmailsApi.md#delete_smtp_template) | **DELETE** /smtp/templates/{templateId} | Delete an inactive email template
[**get_aggregated_smtp_report**](TransactionalEmailsApi.md#get_aggregated_smtp_report) | **GET** /smtp/statistics/aggregatedReport | Get your transactional email activity aggregated over a period of time
[**get_blocked_domains**](TransactionalEmailsApi.md#get_blocked_domains) | **GET** /smtp/blockedDomains | Get the list of blocked domains
[**get_email_event_report**](TransactionalEmailsApi.md#get_email_event_report) | **GET** /smtp/statistics/events | Get all your transactional email activity (unaggregated events)
[**get_scheduled_email_by_batch_id**](TransactionalEmailsApi.md#get_scheduled_email_by_batch_id) | **GET** /smtp/emailStatus/{batchId} | Fetch scheduled emails by batchId
[**get_scheduled_email_by_message_id**](TransactionalEmailsApi.md#get_scheduled_email_by_message_id) | **GET** /smtp/emailStatus/{messageId} | Fetch scheduled email by messageId
[**get_smtp_report**](TransactionalEmailsApi.md#get_smtp_report) | **GET** /smtp/statistics/reports | Get your transactional email activity aggregated per day
[**get_smtp_template**](TransactionalEmailsApi.md#get_smtp_template) | **GET** /smtp/templates/{templateId} | Returns the template information
[**get_smtp_templates**](TransactionalEmailsApi.md#get_smtp_templates) | **GET** /smtp/templates | Get the list of email templates
[**get_transac_blocked_contacts**](TransactionalEmailsApi.md#get_transac_blocked_contacts) | **GET** /smtp/blockedContacts | Get the list of blocked or unsubscribed transactional contacts
[**get_transac_email_content**](TransactionalEmailsApi.md#get_transac_email_content) | **GET** /smtp/emails/{uuid} | Get the personalized content of a sent transactional email
[**get_transac_emails_list**](TransactionalEmailsApi.md#get_transac_emails_list) | **GET** /smtp/emails | Get the list of transactional emails on the basis of allowed filters
[**send_test_template**](TransactionalEmailsApi.md#send_test_template) | **POST** /smtp/templates/{templateId}/sendTest | Send a template to your test list
[**send_transac_email**](TransactionalEmailsApi.md#send_transac_email) | **POST** /smtp/email | Send a transactional email
[**smtp_blocked_contacts_email_delete**](TransactionalEmailsApi.md#smtp_blocked_contacts_email_delete) | **DELETE** /smtp/blockedContacts/{email} | Unblock or resubscribe a transactional contact
[**smtp_log_message_id_delete**](TransactionalEmailsApi.md#smtp_log_message_id_delete) | **DELETE** /smtp/log/{messageId} | Delete an SMTP transactional log
[**update_smtp_template**](TransactionalEmailsApi.md#update_smtp_template) | **PUT** /smtp/templates/{templateId} | Update an email template


# **block_new_domain**
> block_new_domain(block_domain)

Add a new domain to the list of blocked domains

Blocks a new domain in order to avoid messages being sent to the same

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

api_instance = SibApiV3Sdk::TransactionalEmailsApi.new

block_domain = SibApiV3Sdk::BlockDomain.new # BlockDomain | 


begin
  #Add a new domain to the list of blocked domains
  api_instance.block_new_domain(block_domain)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling TransactionalEmailsApi->block_new_domain: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **block_domain** | [**BlockDomain**](BlockDomain.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_smtp_template**
> CreateModel create_smtp_template(smtp_template)

Create an email template

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

api_instance = SibApiV3Sdk::TransactionalEmailsApi.new

smtp_template = SibApiV3Sdk::CreateSmtpTemplate.new # CreateSmtpTemplate | values to update in transactional email template


begin
  #Create an email template
  result = api_instance.create_smtp_template(smtp_template)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling TransactionalEmailsApi->create_smtp_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smtp_template** | [**CreateSmtpTemplate**](CreateSmtpTemplate.md)| values to update in transactional email template | 

### Return type

[**CreateModel**](CreateModel.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_blocked_domain**
> delete_blocked_domain(domain)

Unblock an existing domain from the list of blocked domains

Unblocks an existing domain from the list of blocked domains

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

api_instance = SibApiV3Sdk::TransactionalEmailsApi.new

domain = 'domain_example' # String | The name of the domain to be deleted


begin
  #Unblock an existing domain from the list of blocked domains
  api_instance.delete_blocked_domain(domain)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling TransactionalEmailsApi->delete_blocked_domain: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **String**| The name of the domain to be deleted | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_hardbounces**
> delete_hardbounces(opts)

Delete hardbounces

Delete hardbounces. To use carefully (e.g. in case of temporary ISP failures)

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

api_instance = SibApiV3Sdk::TransactionalEmailsApi.new

opts = { 
  delete_hardbounces: SibApiV3Sdk::DeleteHardbounces.new # DeleteHardbounces | values to delete hardbounces
}

begin
  #Delete hardbounces
  api_instance.delete_hardbounces(opts)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling TransactionalEmailsApi->delete_hardbounces: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delete_hardbounces** | [**DeleteHardbounces**](DeleteHardbounces.md)| values to delete hardbounces | [optional] 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_scheduled_email_by_id**
> delete_scheduled_email_by_id(identifier)

Delete scheduled emails by batchId or messageId

Delete scheduled batch of emails by batchId or single scheduled email by messageId

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

api_instance = SibApiV3Sdk::TransactionalEmailsApi.new

identifier = 'identifier_example' # String | The `batchId` of scheduled emails batch (Should be a valid UUIDv4) or the `messageId` of scheduled email.


begin
  #Delete scheduled emails by batchId or messageId
  api_instance.delete_scheduled_email_by_id(identifier)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling TransactionalEmailsApi->delete_scheduled_email_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| The &#x60;batchId&#x60; of scheduled emails batch (Should be a valid UUIDv4) or the &#x60;messageId&#x60; of scheduled email. | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_smtp_template**
> delete_smtp_template(template_id)

Delete an inactive email template

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

api_instance = SibApiV3Sdk::TransactionalEmailsApi.new

template_id = 789 # Integer | id of the template


begin
  #Delete an inactive email template
  api_instance.delete_smtp_template(template_id)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling TransactionalEmailsApi->delete_smtp_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| id of the template | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_aggregated_smtp_report**
> GetAggregatedReport get_aggregated_smtp_report(opts)

Get your transactional email activity aggregated over a period of time

This endpoint will show the aggregated stats for past 90 days by default if `startDate` and `endDate` OR `days` is not passed. The date range can not exceed 90 days

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

api_instance = SibApiV3Sdk::TransactionalEmailsApi.new

opts = { 
  start_date: 'start_date_example', # String | Mandatory if endDate is used. Starting date of the report (YYYY-MM-DD). Must be lower than equal to endDate
  end_date: 'end_date_example', # String | Mandatory if startDate is used. Ending date of the report (YYYY-MM-DD). Must be greater than equal to startDate
  days: 789, # Integer | Number of days in the past including today (positive integer). Not compatible with 'startDate' and 'endDate'
  tag: 'tag_example' # String | Tag of the emails
}

begin
  #Get your transactional email activity aggregated over a period of time
  result = api_instance.get_aggregated_smtp_report(opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling TransactionalEmailsApi->get_aggregated_smtp_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **String**| Mandatory if endDate is used. Starting date of the report (YYYY-MM-DD). Must be lower than equal to endDate | [optional] 
 **end_date** | **String**| Mandatory if startDate is used. Ending date of the report (YYYY-MM-DD). Must be greater than equal to startDate | [optional] 
 **days** | **Integer**| Number of days in the past including today (positive integer). Not compatible with &#39;startDate&#39; and &#39;endDate&#39; | [optional] 
 **tag** | **String**| Tag of the emails | [optional] 

### Return type

[**GetAggregatedReport**](GetAggregatedReport.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_blocked_domains**
> GetBlockedDomains get_blocked_domains

Get the list of blocked domains

Get the list of blocked domains

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

api_instance = SibApiV3Sdk::TransactionalEmailsApi.new

begin
  #Get the list of blocked domains
  result = api_instance.get_blocked_domains
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling TransactionalEmailsApi->get_blocked_domains: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetBlockedDomains**](GetBlockedDomains.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_email_event_report**
> GetEmailEventReport get_email_event_report(opts)

Get all your transactional email activity (unaggregated events)

This endpoint will show the aggregated stats for past 30 days by default if `startDate` and `endDate` OR `days` is not passed. The date range can not exceed 90 days

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

api_instance = SibApiV3Sdk::TransactionalEmailsApi.new

opts = { 
  limit: 50, # Integer | Number limitation for the result returned
  offset: 0, # Integer | Beginning point in the list to retrieve from.
  start_date: 'start_date_example', # String | Mandatory if endDate is used. Starting date of the report (YYYY-MM-DD). Must be lower than equal to endDate
  end_date: 'end_date_example', # String | Mandatory if startDate is used. Ending date of the report (YYYY-MM-DD). Must be greater than equal to startDate
  days: 789, # Integer | Number of days in the past including today (positive integer). Not compatible with 'startDate' and 'endDate'
  email: 'email_example', # String | Filter the report for a specific email addresses
  event: 'event_example', # String | Filter the report for a specific event type
  tags: 'tags_example', # String | Filter the report for tags (serialized and urlencoded array)
  message_id: 'message_id_example', # String | Filter on a specific message id
  template_id: 789, # Integer | Filter on a specific template id
  sort: 'desc' # String | Sort the results in the ascending/descending order of record creation. Default order is **descending** if `sort` is not passed
}

begin
  #Get all your transactional email activity (unaggregated events)
  result = api_instance.get_email_event_report(opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling TransactionalEmailsApi->get_email_event_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Number limitation for the result returned | [optional] [default to 50]
 **offset** | **Integer**| Beginning point in the list to retrieve from. | [optional] [default to 0]
 **start_date** | **String**| Mandatory if endDate is used. Starting date of the report (YYYY-MM-DD). Must be lower than equal to endDate | [optional] 
 **end_date** | **String**| Mandatory if startDate is used. Ending date of the report (YYYY-MM-DD). Must be greater than equal to startDate | [optional] 
 **days** | **Integer**| Number of days in the past including today (positive integer). Not compatible with &#39;startDate&#39; and &#39;endDate&#39; | [optional] 
 **email** | **String**| Filter the report for a specific email addresses | [optional] 
 **event** | **String**| Filter the report for a specific event type | [optional] 
 **tags** | **String**| Filter the report for tags (serialized and urlencoded array) | [optional] 
 **message_id** | **String**| Filter on a specific message id | [optional] 
 **template_id** | **Integer**| Filter on a specific template id | [optional] 
 **sort** | **String**| Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional] [default to desc]

### Return type

[**GetEmailEventReport**](GetEmailEventReport.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_scheduled_email_by_batch_id**
> GetScheduledEmailByBatchId get_scheduled_email_by_batch_id(batch_id, opts)

Fetch scheduled emails by batchId

Fetch scheduled batch of emails by batchId (Can retrieve data upto 30 days old)

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

api_instance = SibApiV3Sdk::TransactionalEmailsApi.new

batch_id = 'batch_id_example' # String | The batchId of scheduled emails batch (Should be a valid UUIDv4)

opts = { 
  start_date: Date.parse('2013-10-20'), # Date | Mandatory if `endDate` is used. Starting date (YYYY-MM-DD) from which you want to fetch the list. Can be maximum 30 days older tha current date.
  end_date: Date.parse('2013-10-20'), # Date | Mandatory if `startDate` is used. Ending date (YYYY-MM-DD) till which you want to fetch the list. Maximum time period that can be selected is one month.
  sort: 'desc', # String | Sort the results in the ascending/descending order of record creation. Default order is **descending** if `sort` is not passed
  status: 'status_example', # String | Filter the records by `status` of the scheduled email batch or message.
  limit: 100, # Integer | Number of documents returned per page
  offset: 0 # Integer | Index of the first document on the page
}

begin
  #Fetch scheduled emails by batchId
  result = api_instance.get_scheduled_email_by_batch_id(batch_id, opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling TransactionalEmailsApi->get_scheduled_email_by_batch_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_id** | **String**| The batchId of scheduled emails batch (Should be a valid UUIDv4) | 
 **start_date** | **Date**| Mandatory if &#x60;endDate&#x60; is used. Starting date (YYYY-MM-DD) from which you want to fetch the list. Can be maximum 30 days older tha current date. | [optional] 
 **end_date** | **Date**| Mandatory if &#x60;startDate&#x60; is used. Ending date (YYYY-MM-DD) till which you want to fetch the list. Maximum time period that can be selected is one month. | [optional] 
 **sort** | **String**| Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional] [default to desc]
 **status** | **String**| Filter the records by &#x60;status&#x60; of the scheduled email batch or message. | [optional] 
 **limit** | **Integer**| Number of documents returned per page | [optional] [default to 100]
 **offset** | **Integer**| Index of the first document on the page | [optional] [default to 0]

### Return type

[**GetScheduledEmailByBatchId**](GetScheduledEmailByBatchId.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_scheduled_email_by_message_id**
> GetScheduledEmailByMessageId get_scheduled_email_by_message_id(message_id, opts)

Fetch scheduled email by messageId

Fetch scheduled email by messageId (Can retrieve data upto 30 days old)

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

api_instance = SibApiV3Sdk::TransactionalEmailsApi.new

message_id = 'message_id_example' # String | The messageId of scheduled email

opts = { 
  start_date: Date.parse('2013-10-20'), # Date | Mandatory if endDate is used. Starting date (YYYY-MM-DD) from which you want to fetch the list. Can be maximum 30 days older tha current date.
  end_date: Date.parse('2013-10-20') # Date | Mandatory if startDate is used. Ending date (YYYY-MM-DD) till which you want to fetch the list. Maximum time period that can be selected is one month.
}

begin
  #Fetch scheduled email by messageId
  result = api_instance.get_scheduled_email_by_message_id(message_id, opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling TransactionalEmailsApi->get_scheduled_email_by_message_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_id** | **String**| The messageId of scheduled email | 
 **start_date** | **Date**| Mandatory if endDate is used. Starting date (YYYY-MM-DD) from which you want to fetch the list. Can be maximum 30 days older tha current date. | [optional] 
 **end_date** | **Date**| Mandatory if startDate is used. Ending date (YYYY-MM-DD) till which you want to fetch the list. Maximum time period that can be selected is one month. | [optional] 

### Return type

[**GetScheduledEmailByMessageId**](GetScheduledEmailByMessageId.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_smtp_report**
> GetReports get_smtp_report(opts)

Get your transactional email activity aggregated per day

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

api_instance = SibApiV3Sdk::TransactionalEmailsApi.new

opts = { 
  limit: 10, # Integer | Number of documents returned per page
  offset: 0, # Integer | Index of the first document on the page
  start_date: 'start_date_example', # String | Mandatory if endDate is used. Starting date of the report (YYYY-MM-DD)
  end_date: 'end_date_example', # String | Mandatory if startDate is used. Ending date of the report (YYYY-MM-DD)
  days: 789, # Integer | Number of days in the past including today (positive integer). Not compatible with 'startDate' and 'endDate'
  tag: 'tag_example', # String | Tag of the emails
  sort: 'desc' # String | Sort the results in the ascending/descending order of record creation. Default order is **descending** if `sort` is not passed
}

begin
  #Get your transactional email activity aggregated per day
  result = api_instance.get_smtp_report(opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling TransactionalEmailsApi->get_smtp_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Number of documents returned per page | [optional] [default to 10]
 **offset** | **Integer**| Index of the first document on the page | [optional] [default to 0]
 **start_date** | **String**| Mandatory if endDate is used. Starting date of the report (YYYY-MM-DD) | [optional] 
 **end_date** | **String**| Mandatory if startDate is used. Ending date of the report (YYYY-MM-DD) | [optional] 
 **days** | **Integer**| Number of days in the past including today (positive integer). Not compatible with &#39;startDate&#39; and &#39;endDate&#39; | [optional] 
 **tag** | **String**| Tag of the emails | [optional] 
 **sort** | **String**| Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional] [default to desc]

### Return type

[**GetReports**](GetReports.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_smtp_template**
> GetSmtpTemplateOverview get_smtp_template(template_id)

Returns the template information

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

api_instance = SibApiV3Sdk::TransactionalEmailsApi.new

template_id = 789 # Integer | id of the template


begin
  #Returns the template information
  result = api_instance.get_smtp_template(template_id)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling TransactionalEmailsApi->get_smtp_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| id of the template | 

### Return type

[**GetSmtpTemplateOverview**](GetSmtpTemplateOverview.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_smtp_templates**
> GetSmtpTemplates get_smtp_templates(opts)

Get the list of email templates

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

api_instance = SibApiV3Sdk::TransactionalEmailsApi.new

opts = { 
  template_status: true, # BOOLEAN | Filter on the status of the template. Active = true, inactive = false
  limit: 50, # Integer | Number of documents returned per page
  offset: 0, # Integer | Index of the first document in the page
  sort: 'desc' # String | Sort the results in the ascending/descending order of record creation. Default order is **descending** if `sort` is not passed
}

begin
  #Get the list of email templates
  result = api_instance.get_smtp_templates(opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling TransactionalEmailsApi->get_smtp_templates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_status** | **BOOLEAN**| Filter on the status of the template. Active &#x3D; true, inactive &#x3D; false | [optional] 
 **limit** | **Integer**| Number of documents returned per page | [optional] [default to 50]
 **offset** | **Integer**| Index of the first document in the page | [optional] [default to 0]
 **sort** | **String**| Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional] [default to desc]

### Return type

[**GetSmtpTemplates**](GetSmtpTemplates.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_transac_blocked_contacts**
> GetTransacBlockedContacts get_transac_blocked_contacts(opts)

Get the list of blocked or unsubscribed transactional contacts

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

api_instance = SibApiV3Sdk::TransactionalEmailsApi.new

opts = { 
  start_date: 'start_date_example', # String | Mandatory if endDate is used. Starting date (YYYY-MM-DD) from which you want to fetch the blocked or unsubscribed contacts
  end_date: 'end_date_example', # String | Mandatory if startDate is used. Ending date (YYYY-MM-DD) till which you want to fetch the blocked or unsubscribed contacts
  limit: 50, # Integer | Number of documents returned per page
  offset: 0, # Integer | Index of the first document on the page
  senders: ['senders_example'], # Array<String> | Comma separated list of emails of the senders from which contacts are blocked or unsubscribed
  sort: 'desc' # String | Sort the results in the ascending/descending order of record creation. Default order is **descending** if `sort` is not passed
}

begin
  #Get the list of blocked or unsubscribed transactional contacts
  result = api_instance.get_transac_blocked_contacts(opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling TransactionalEmailsApi->get_transac_blocked_contacts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **String**| Mandatory if endDate is used. Starting date (YYYY-MM-DD) from which you want to fetch the blocked or unsubscribed contacts | [optional] 
 **end_date** | **String**| Mandatory if startDate is used. Ending date (YYYY-MM-DD) till which you want to fetch the blocked or unsubscribed contacts | [optional] 
 **limit** | **Integer**| Number of documents returned per page | [optional] [default to 50]
 **offset** | **Integer**| Index of the first document on the page | [optional] [default to 0]
 **senders** | [**Array&lt;String&gt;**](String.md)| Comma separated list of emails of the senders from which contacts are blocked or unsubscribed | [optional] 
 **sort** | **String**| Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional] [default to desc]

### Return type

[**GetTransacBlockedContacts**](GetTransacBlockedContacts.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_transac_email_content**
> GetTransacEmailContent get_transac_email_content(uuid)

Get the personalized content of a sent transactional email

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

api_instance = SibApiV3Sdk::TransactionalEmailsApi.new

uuid = 'uuid_example' # String | Unique id of the transactional email that has been sent to a particular contact


begin
  #Get the personalized content of a sent transactional email
  result = api_instance.get_transac_email_content(uuid)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling TransactionalEmailsApi->get_transac_email_content: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| Unique id of the transactional email that has been sent to a particular contact | 

### Return type

[**GetTransacEmailContent**](GetTransacEmailContent.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_transac_emails_list**
> GetTransacEmailsList get_transac_emails_list(opts)

Get the list of transactional emails on the basis of allowed filters

This endpoint will show the list of emails for past 30 days by default. To retrieve emails before that time, please pass startDate and endDate in query filters.

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

api_instance = SibApiV3Sdk::TransactionalEmailsApi.new

opts = { 
  email: 'email_example', # String | Mandatory if templateId and messageId are not passed in query filters. Email address to which transactional email has been sent.
  template_id: 789, # Integer | Mandatory if email and messageId are not passed in query filters. Id of the template that was used to compose transactional email.
  message_id: 'message_id_example', # String | Mandatory if templateId and email are not passed in query filters. Message ID of the transactional email sent.
  start_date: 'start_date_example', # String | Mandatory if endDate is used. Starting date (YYYY-MM-DD) from which you want to fetch the list. Maximum time period that can be selected is one month.
  end_date: 'end_date_example', # String | Mandatory if startDate is used. Ending date (YYYY-MM-DD) till which you want to fetch the list. Maximum time period that can be selected is one month.
  sort: 'desc', # String | Sort the results in the ascending/descending order of record creation. Default order is **descending** if `sort` is not passed
  limit: 500, # Integer | Number of documents returned per page
  offset: 0 # Integer | Index of the first document in the page
}

begin
  #Get the list of transactional emails on the basis of allowed filters
  result = api_instance.get_transac_emails_list(opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling TransactionalEmailsApi->get_transac_emails_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| Mandatory if templateId and messageId are not passed in query filters. Email address to which transactional email has been sent. | [optional] 
 **template_id** | **Integer**| Mandatory if email and messageId are not passed in query filters. Id of the template that was used to compose transactional email. | [optional] 
 **message_id** | **String**| Mandatory if templateId and email are not passed in query filters. Message ID of the transactional email sent. | [optional] 
 **start_date** | **String**| Mandatory if endDate is used. Starting date (YYYY-MM-DD) from which you want to fetch the list. Maximum time period that can be selected is one month. | [optional] 
 **end_date** | **String**| Mandatory if startDate is used. Ending date (YYYY-MM-DD) till which you want to fetch the list. Maximum time period that can be selected is one month. | [optional] 
 **sort** | **String**| Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional] [default to desc]
 **limit** | **Integer**| Number of documents returned per page | [optional] [default to 500]
 **offset** | **Integer**| Index of the first document in the page | [optional] [default to 0]

### Return type

[**GetTransacEmailsList**](GetTransacEmailsList.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_test_template**
> send_test_template(template_id, send_test_email)

Send a template to your test list

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

api_instance = SibApiV3Sdk::TransactionalEmailsApi.new

template_id = 789 # Integer | Id of the template

send_test_email = SibApiV3Sdk::SendTestEmail.new # SendTestEmail | 


begin
  #Send a template to your test list
  api_instance.send_test_template(template_id, send_test_email)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling TransactionalEmailsApi->send_test_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| Id of the template | 
 **send_test_email** | [**SendTestEmail**](SendTestEmail.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_transac_email**
> CreateSmtpEmail send_transac_email(send_smtp_email)

Send a transactional email

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

api_instance = SibApiV3Sdk::TransactionalEmailsApi.new

send_smtp_email = SibApiV3Sdk::SendSmtpEmail.new # SendSmtpEmail | Values to send a transactional email


begin
  #Send a transactional email
  result = api_instance.send_transac_email(send_smtp_email)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling TransactionalEmailsApi->send_transac_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **send_smtp_email** | [**SendSmtpEmail**](SendSmtpEmail.md)| Values to send a transactional email | 

### Return type

[**CreateSmtpEmail**](CreateSmtpEmail.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **smtp_blocked_contacts_email_delete**
> smtp_blocked_contacts_email_delete(email)

Unblock or resubscribe a transactional contact

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

api_instance = SibApiV3Sdk::TransactionalEmailsApi.new

email = 'email_example' # String | contact email (urlencoded) to unblock.


begin
  #Unblock or resubscribe a transactional contact
  api_instance.smtp_blocked_contacts_email_delete(email)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling TransactionalEmailsApi->smtp_blocked_contacts_email_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| contact email (urlencoded) to unblock. | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **smtp_log_message_id_delete**
> smtp_log_message_id_delete(message_id)

Delete an SMTP transactional log

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

api_instance = SibApiV3Sdk::TransactionalEmailsApi.new

message_id = 'message_id_example' # String | MessageId of the transactional log to delete


begin
  #Delete an SMTP transactional log
  api_instance.smtp_log_message_id_delete(message_id)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling TransactionalEmailsApi->smtp_log_message_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_id** | **String**| MessageId of the transactional log to delete | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_smtp_template**
> update_smtp_template(template_id, smtp_template)

Update an email template

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

api_instance = SibApiV3Sdk::TransactionalEmailsApi.new

template_id = 789 # Integer | id of the template

smtp_template = SibApiV3Sdk::UpdateSmtpTemplate.new # UpdateSmtpTemplate | values to update in transactional email template


begin
  #Update an email template
  api_instance.update_smtp_template(template_id, smtp_template)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling TransactionalEmailsApi->update_smtp_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| id of the template | 
 **smtp_template** | [**UpdateSmtpTemplate**](UpdateSmtpTemplate.md)| values to update in transactional email template | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



