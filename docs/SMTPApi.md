# SibApiV3Sdk::SMTPApi

All URIs are relative to *https://api.sendinblue.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_smtp_template**](SMTPApi.md#create_smtp_template) | **POST** /smtp/templates | Create an smtp template
[**delete_hardbounces**](SMTPApi.md#delete_hardbounces) | **POST** /smtp/deleteHardbounces | Delete hardbounces
[**delete_smtp_template**](SMTPApi.md#delete_smtp_template) | **DELETE** /smtp/templates/{templateId} | Delete an inactive smtp template
[**get_aggregated_smtp_report**](SMTPApi.md#get_aggregated_smtp_report) | **GET** /smtp/statistics/aggregatedReport | Get your SMTP activity aggregated over a period of time
[**get_email_event_report**](SMTPApi.md#get_email_event_report) | **GET** /smtp/statistics/events | Get all your SMTP activity (unaggregated events)
[**get_smtp_report**](SMTPApi.md#get_smtp_report) | **GET** /smtp/statistics/reports | Get your SMTP activity aggregated per day
[**get_smtp_template**](SMTPApi.md#get_smtp_template) | **GET** /smtp/templates/{templateId} | Returns the template informations
[**get_smtp_templates**](SMTPApi.md#get_smtp_templates) | **GET** /smtp/templates | Get the list of SMTP templates
[**send_template**](SMTPApi.md#send_template) | **POST** /smtp/templates/{templateId}/send | Send a template
[**send_test_template**](SMTPApi.md#send_test_template) | **POST** /smtp/templates/{templateId}/sendTest | Send a template to your test list
[**send_transac_email**](SMTPApi.md#send_transac_email) | **POST** /smtp/email | Send a transactional email
[**update_smtp_template**](SMTPApi.md#update_smtp_template) | **PUT** /smtp/templates/{templateId} | Updates an smtp templates


# **create_smtp_template**
> CreateModel create_smtp_template(smtp_template)

Create an smtp template

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

api_instance = SibApiV3Sdk::SMTPApi.new

smtp_template = SibApiV3Sdk::CreateSmtpTemplate.new # CreateSmtpTemplate | values to update in smtp template


begin
  #Create an smtp template
  result = api_instance.create_smtp_template(smtp_template)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling SMTPApi->create_smtp_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smtp_template** | [**CreateSmtpTemplate**](CreateSmtpTemplate.md)| values to update in smtp template | 

### Return type

[**CreateModel**](CreateModel.md)

### Authorization

[api-key](../README.md#api-key)

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
end

api_instance = SibApiV3Sdk::SMTPApi.new

opts = { 
  delete_hardbounces: SibApiV3Sdk::DeleteHardbounces.new # DeleteHardbounces | values to delete hardbounces
}

begin
  #Delete hardbounces
  api_instance.delete_hardbounces(opts)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling SMTPApi->delete_hardbounces: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delete_hardbounces** | [**DeleteHardbounces**](DeleteHardbounces.md)| values to delete hardbounces | [optional] 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_smtp_template**
> delete_smtp_template(template_id)

Delete an inactive smtp template

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

api_instance = SibApiV3Sdk::SMTPApi.new

template_id = 789 # Integer | id of the template


begin
  #Delete an inactive smtp template
  api_instance.delete_smtp_template(template_id)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling SMTPApi->delete_smtp_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| id of the template | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_aggregated_smtp_report**
> GetAggregatedReport get_aggregated_smtp_report(opts)

Get your SMTP activity aggregated over a period of time

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

api_instance = SibApiV3Sdk::SMTPApi.new

opts = { 
  start_date: Date.parse("2013-10-20"), # Date | Mandatory if endDate is used. Starting date of the report (YYYY-MM-DD). Must be lower than equal to endDate
  end_date: Date.parse("2013-10-20"), # Date | Mandatory if startDate is used. Ending date of the report (YYYY-MM-DD). Must be greater than equal to startDate
  days: 56, # Integer | Number of days in the past including today (positive integer). Not compatible with 'startDate' and 'endDate'
  tag: "tag_example" # String | Tag of the emails
}

begin
  #Get your SMTP activity aggregated over a period of time
  result = api_instance.get_aggregated_smtp_report(opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling SMTPApi->get_aggregated_smtp_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **Date**| Mandatory if endDate is used. Starting date of the report (YYYY-MM-DD). Must be lower than equal to endDate | [optional] 
 **end_date** | **Date**| Mandatory if startDate is used. Ending date of the report (YYYY-MM-DD). Must be greater than equal to startDate | [optional] 
 **days** | **Integer**| Number of days in the past including today (positive integer). Not compatible with &#39;startDate&#39; and &#39;endDate&#39; | [optional] 
 **tag** | **String**| Tag of the emails | [optional] 

### Return type

[**GetAggregatedReport**](GetAggregatedReport.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_email_event_report**
> GetEmailEventReport get_email_event_report(opts)

Get all your SMTP activity (unaggregated events)

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

api_instance = SibApiV3Sdk::SMTPApi.new

opts = { 
  limit: 50, # Integer | Number limitation for the result returned
  offset: 0, # Integer | Beginning point in the list to retrieve from.
  start_date: Date.parse("2013-10-20"), # Date | Mandatory if endDate is used. Starting date of the report (YYYY-MM-DD). Must be lower than equal to endDate
  end_date: Date.parse("2013-10-20"), # Date | Mandatory if startDate is used. Ending date of the report (YYYY-MM-DD). Must be greater than equal to startDate
  days: 56, # Integer | Number of days in the past including today (positive integer). Not compatible with 'startDate' and 'endDate'
  email: "email_example", # String | Filter the report for a specific email addresses
  event: "event_example", # String | Filter the report for a specific event type
  tags: "tags_example", # String | Filter the report for tags (serialized and urlencoded array)
  message_id: "message_id_example", # String | Filter on a specific message id
  template_id: 789 # Integer | Filter on a specific template id
}

begin
  #Get all your SMTP activity (unaggregated events)
  result = api_instance.get_email_event_report(opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling SMTPApi->get_email_event_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Number limitation for the result returned | [optional] [default to 50]
 **offset** | **Integer**| Beginning point in the list to retrieve from. | [optional] [default to 0]
 **start_date** | **Date**| Mandatory if endDate is used. Starting date of the report (YYYY-MM-DD). Must be lower than equal to endDate | [optional] 
 **end_date** | **Date**| Mandatory if startDate is used. Ending date of the report (YYYY-MM-DD). Must be greater than equal to startDate | [optional] 
 **days** | **Integer**| Number of days in the past including today (positive integer). Not compatible with &#39;startDate&#39; and &#39;endDate&#39; | [optional] 
 **email** | **String**| Filter the report for a specific email addresses | [optional] 
 **event** | **String**| Filter the report for a specific event type | [optional] 
 **tags** | **String**| Filter the report for tags (serialized and urlencoded array) | [optional] 
 **message_id** | **String**| Filter on a specific message id | [optional] 
 **template_id** | **Integer**| Filter on a specific template id | [optional] 

### Return type

[**GetEmailEventReport**](GetEmailEventReport.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_smtp_report**
> GetReports get_smtp_report(opts)

Get your SMTP activity aggregated per day

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

api_instance = SibApiV3Sdk::SMTPApi.new

opts = { 
  limit: 50, # Integer | Number of documents returned per page
  offset: 0, # Integer | Index of the first document on the page
  start_date: Date.parse("2013-10-20"), # Date | Mandatory if endDate is used. Starting date of the report (YYYY-MM-DD)
  end_date: Date.parse("2013-10-20"), # Date | Mandatory if startDate is used. Ending date of the report (YYYY-MM-DD)
  days: 56, # Integer | Number of days in the past including today (positive integer). Not compatible with 'startDate' and 'endDate'
  tag: "tag_example" # String | Tag of the emails
}

begin
  #Get your SMTP activity aggregated per day
  result = api_instance.get_smtp_report(opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling SMTPApi->get_smtp_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Number of documents returned per page | [optional] [default to 50]
 **offset** | **Integer**| Index of the first document on the page | [optional] [default to 0]
 **start_date** | **Date**| Mandatory if endDate is used. Starting date of the report (YYYY-MM-DD) | [optional] 
 **end_date** | **Date**| Mandatory if startDate is used. Ending date of the report (YYYY-MM-DD) | [optional] 
 **days** | **Integer**| Number of days in the past including today (positive integer). Not compatible with &#39;startDate&#39; and &#39;endDate&#39; | [optional] 
 **tag** | **String**| Tag of the emails | [optional] 

### Return type

[**GetReports**](GetReports.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_smtp_template**
> GetSmtpTemplateOverview get_smtp_template(template_id)

Returns the template informations

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

api_instance = SibApiV3Sdk::SMTPApi.new

template_id = 789 # Integer | id of the template


begin
  #Returns the template informations
  result = api_instance.get_smtp_template(template_id)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling SMTPApi->get_smtp_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| id of the template | 

### Return type

[**GetSmtpTemplateOverview**](GetSmtpTemplateOverview.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_smtp_templates**
> GetSmtpTemplates get_smtp_templates(opts)

Get the list of SMTP templates

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

api_instance = SibApiV3Sdk::SMTPApi.new

opts = { 
  template_status: true, # BOOLEAN | Filter on the status of the template. Active = true, inactive = false
  limit: 50, # Integer | Number of documents returned per page
  offset: 0 # Integer | Index of the first document in the page
}

begin
  #Get the list of SMTP templates
  result = api_instance.get_smtp_templates(opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling SMTPApi->get_smtp_templates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_status** | **BOOLEAN**| Filter on the status of the template. Active &#x3D; true, inactive &#x3D; false | [optional] 
 **limit** | **Integer**| Number of documents returned per page | [optional] [default to 50]
 **offset** | **Integer**| Index of the first document in the page | [optional] [default to 0]

### Return type

[**GetSmtpTemplates**](GetSmtpTemplates.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_template**
> SendTemplateEmail send_template(template_id, send_email)

Send a template

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

api_instance = SibApiV3Sdk::SMTPApi.new

template_id = 789 # Integer | Id of the template

send_email = SibApiV3Sdk::SendEmail.new # SendEmail | 


begin
  #Send a template
  result = api_instance.send_template(template_id, send_email)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling SMTPApi->send_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| Id of the template | 
 **send_email** | [**SendEmail**](SendEmail.md)|  | 

### Return type

[**SendTemplateEmail**](SendTemplateEmail.md)

### Authorization

[api-key](../README.md#api-key)

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
end

api_instance = SibApiV3Sdk::SMTPApi.new

template_id = 789 # Integer | Id of the template

send_test_email = SibApiV3Sdk::SendTestEmail.new # SendTestEmail | 


begin
  #Send a template to your test list
  api_instance.send_test_template(template_id, send_test_email)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling SMTPApi->send_test_template: #{e}"
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

[api-key](../README.md#api-key)

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
end

api_instance = SibApiV3Sdk::SMTPApi.new

send_smtp_email = SibApiV3Sdk::SendSmtpEmail.new # SendSmtpEmail | Values to send a transactional email


begin
  #Send a transactional email
  result = api_instance.send_transac_email(send_smtp_email)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling SMTPApi->send_transac_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **send_smtp_email** | [**SendSmtpEmail**](SendSmtpEmail.md)| Values to send a transactional email | 

### Return type

[**CreateSmtpEmail**](CreateSmtpEmail.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_smtp_template**
> update_smtp_template(template_id, smtp_template)

Updates an smtp templates

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

api_instance = SibApiV3Sdk::SMTPApi.new

template_id = 789 # Integer | id of the template

smtp_template = SibApiV3Sdk::UpdateSmtpTemplate.new # UpdateSmtpTemplate | values to update in smtp template


begin
  #Updates an smtp templates
  api_instance.update_smtp_template(template_id, smtp_template)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling SMTPApi->update_smtp_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| id of the template | 
 **smtp_template** | [**UpdateSmtpTemplate**](UpdateSmtpTemplate.md)| values to update in smtp template | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



