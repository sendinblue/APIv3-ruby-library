# SendinblueApiv3::EmailCampaignsApi

All URIs are relative to *https://api.sendinblue.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_email_campaign**](EmailCampaignsApi.md#create_email_campaign) | **POST** /emailCampaigns | Create an email campaign
[**delete_email_campaigns**](EmailCampaignsApi.md#delete_email_campaigns) | **DELETE** /emailCampaigns/{campaignId} | Delete an email campaign
[**email_export_recipients**](EmailCampaignsApi.md#email_export_recipients) | **POST** /emailCampaigns/{campaignId}/exportRecipients | Export the recipients of a campaign
[**get_email_campaign**](EmailCampaignsApi.md#get_email_campaign) | **GET** /emailCampaigns/{campaignId} | Get campaign informations
[**get_email_campaigns**](EmailCampaignsApi.md#get_email_campaigns) | **GET** /emailCampaigns | Return all your created campaigns
[**send_email_campaign_now**](EmailCampaignsApi.md#send_email_campaign_now) | **POST** /emailCampaigns/{campaignId}/sendNow | Send an email campaign id of the campaign immediately
[**send_report**](EmailCampaignsApi.md#send_report) | **POST** /emailCampaigns/{campaignId}/sendReport | Send the report of a campaigns
[**send_test_email**](EmailCampaignsApi.md#send_test_email) | **POST** /emailCampaigns/{campaignId}/sendTest | Send an email campaign to your test list
[**update_campaign_status**](EmailCampaignsApi.md#update_campaign_status) | **PUT** /emailCampaigns/{campaignId}/status | Update a campaign status
[**update_email_campaigns**](EmailCampaignsApi.md#update_email_campaigns) | **PUT** /emailCampaigns/{campaignId} | Update a campaign


# **create_email_campaign**
> CreateModel create_email_campaign(email_campaigns)

Create an email campaign

### Example
```ruby
# load the gem
require 'sendinblue-apiv3'
# setup authorization
SendinblueApiv3.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = SendinblueApiv3::EmailCampaignsApi.new

email_campaigns = SendinblueApiv3::CreateEmailCampaign.new # CreateEmailCampaign | Values to create a campaign


begin
  #Create an email campaign
  result = api_instance.create_email_campaign(email_campaigns)
  p result
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling EmailCampaignsApi->create_email_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_campaigns** | [**CreateEmailCampaign**](CreateEmailCampaign.md)| Values to create a campaign | 

### Return type

[**CreateModel**](CreateModel.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_email_campaigns**
> delete_email_campaigns(campaign_id)

Delete an email campaign

### Example
```ruby
# load the gem
require 'sendinblue-apiv3'
# setup authorization
SendinblueApiv3.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = SendinblueApiv3::EmailCampaignsApi.new

campaign_id = "campaign_id_example" # String | id of the campaign


begin
  #Delete an email campaign
  api_instance.delete_email_campaigns(campaign_id)
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling EmailCampaignsApi->delete_email_campaigns: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **String**| id of the campaign | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **email_export_recipients**
> CreatedProcessId email_export_recipients(campaign_id, opts)

Export the recipients of a campaign

### Example
```ruby
# load the gem
require 'sendinblue-apiv3'
# setup authorization
SendinblueApiv3.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = SendinblueApiv3::EmailCampaignsApi.new

campaign_id = "campaign_id_example" # String | Id of the campaign

opts = { 
  recipient_export: SendinblueApiv3::EmailExportRecipients.new # EmailExportRecipients | Values to send for a recipient export request
}

begin
  #Export the recipients of a campaign
  result = api_instance.email_export_recipients(campaign_id, opts)
  p result
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling EmailCampaignsApi->email_export_recipients: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **String**| Id of the campaign | 
 **recipient_export** | [**EmailExportRecipients**](EmailExportRecipients.md)| Values to send for a recipient export request | [optional] 

### Return type

[**CreatedProcessId**](CreatedProcessId.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_email_campaign**
> GetEmailCampaign get_email_campaign(campaign_id)

Get campaign informations

### Example
```ruby
# load the gem
require 'sendinblue-apiv3'
# setup authorization
SendinblueApiv3.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = SendinblueApiv3::EmailCampaignsApi.new

campaign_id = "campaign_id_example" # String | Id of the campaign


begin
  #Get campaign informations
  result = api_instance.get_email_campaign(campaign_id)
  p result
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling EmailCampaignsApi->get_email_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **String**| Id of the campaign | 

### Return type

[**GetEmailCampaign**](GetEmailCampaign.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_email_campaigns**
> GetEmailCampaigns get_email_campaigns(opts)

Return all your created campaigns

### Example
```ruby
# load the gem
require 'sendinblue-apiv3'
# setup authorization
SendinblueApiv3.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = SendinblueApiv3::EmailCampaignsApi.new

opts = { 
  type: "type_example", # String | Filter on the type of the campaigns
  status: "status_example", # String | Filter on the status of the campaign
  limit: 500, # Integer | Number of documents per page
  offset: 0 # Integer | Index of the first document in the page
}

begin
  #Return all your created campaigns
  result = api_instance.get_email_campaigns(opts)
  p result
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling EmailCampaignsApi->get_email_campaigns: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Filter on the type of the campaigns | [optional] 
 **status** | **String**| Filter on the status of the campaign | [optional] 
 **limit** | **Integer**| Number of documents per page | [optional] [default to 500]
 **offset** | **Integer**| Index of the first document in the page | [optional] [default to 0]

### Return type

[**GetEmailCampaigns**](GetEmailCampaigns.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_email_campaign_now**
> send_email_campaign_now(campaign_id)

Send an email campaign id of the campaign immediately

### Example
```ruby
# load the gem
require 'sendinblue-apiv3'
# setup authorization
SendinblueApiv3.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = SendinblueApiv3::EmailCampaignsApi.new

campaign_id = "campaign_id_example" # String | Id of the campaign


begin
  #Send an email campaign id of the campaign immediately
  api_instance.send_email_campaign_now(campaign_id)
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling EmailCampaignsApi->send_email_campaign_now: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **String**| Id of the campaign | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_report**
> send_report(campaign_id, send_report)

Send the report of a campaigns

A PDF will be sent to the specified email addresses

### Example
```ruby
# load the gem
require 'sendinblue-apiv3'
# setup authorization
SendinblueApiv3.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = SendinblueApiv3::EmailCampaignsApi.new

campaign_id = "campaign_id_example" # String | Id of the campaign

send_report = SendinblueApiv3::SendReport.new # SendReport | Values for send a report


begin
  #Send the report of a campaigns
  api_instance.send_report(campaign_id, send_report)
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling EmailCampaignsApi->send_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **String**| Id of the campaign | 
 **send_report** | [**SendReport**](SendReport.md)| Values for send a report | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_test_email**
> send_test_email(campaign_id, email_to)

Send an email campaign to your test list

### Example
```ruby
# load the gem
require 'sendinblue-apiv3'
# setup authorization
SendinblueApiv3.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = SendinblueApiv3::EmailCampaignsApi.new

campaign_id = "campaign_id_example" # String | Id of the campaign

email_to = SendinblueApiv3::SendTestEmail.new # SendTestEmail | 


begin
  #Send an email campaign to your test list
  api_instance.send_test_email(campaign_id, email_to)
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling EmailCampaignsApi->send_test_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **String**| Id of the campaign | 
 **email_to** | [**SendTestEmail**](SendTestEmail.md)|  | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_campaign_status**
> update_campaign_status(campaign_id, status)

Update a campaign status

### Example
```ruby
# load the gem
require 'sendinblue-apiv3'
# setup authorization
SendinblueApiv3.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = SendinblueApiv3::EmailCampaignsApi.new

campaign_id = "campaign_id_example" # String | Id of the campaign

status = SendinblueApiv3::UpdateCampaignStatus.new # UpdateCampaignStatus | Status of the campaign


begin
  #Update a campaign status
  api_instance.update_campaign_status(campaign_id, status)
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling EmailCampaignsApi->update_campaign_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **String**| Id of the campaign | 
 **status** | [**UpdateCampaignStatus**](UpdateCampaignStatus.md)| Status of the campaign | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_email_campaigns**
> update_email_campaigns(campaign_id, email_campaign)

Update a campaign

### Example
```ruby
# load the gem
require 'sendinblue-apiv3'
# setup authorization
SendinblueApiv3.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = SendinblueApiv3::EmailCampaignsApi.new

campaign_id = "campaign_id_example" # String | Id of the campaign

email_campaign = SendinblueApiv3::UpdateEmailCampaign.new # UpdateEmailCampaign | Values to update a campaign


begin
  #Update a campaign
  api_instance.update_email_campaigns(campaign_id, email_campaign)
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling EmailCampaignsApi->update_email_campaigns: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **String**| Id of the campaign | 
 **email_campaign** | [**UpdateEmailCampaign**](UpdateEmailCampaign.md)| Values to update a campaign | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



