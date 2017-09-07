# SendinblueApiv3::SMSCampaignsApi

All URIs are relative to *https://api.sendinblue.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_sms_campaign**](SMSCampaignsApi.md#create_sms_campaign) | **POST** /smsCampaigns | Creates a SMS campaign
[**delete_sms_campaigns**](SMSCampaignsApi.md#delete_sms_campaigns) | **DELETE** /smsCampaigns/{campaignId} | Delete the SMS campaign
[**get_sms_campaign**](SMSCampaignsApi.md#get_sms_campaign) | **GET** /smsCampaigns/{campaignId} | Get a SMS campaign
[**get_sms_campaigns**](SMSCampaignsApi.md#get_sms_campaigns) | **GET** /smsCampaigns | Returns the informations for all your created SMS campaigns
[**request_sms_recipient_export**](SMSCampaignsApi.md#request_sms_recipient_export) | **POST** /smsCampaigns/{campaignId}/exportRecipients | Exports the recipients of the specified campaign.
[**send_sms_campaign_now**](SMSCampaignsApi.md#send_sms_campaign_now) | **POST** /smsCampaigns/{campaignId}/sendNow | Send your SMS campaign immediately
[**send_sms_report**](SMSCampaignsApi.md#send_sms_report) | **POST** /smsCampaigns/{campaignId}/sendReport | Send report of SMS campaigns
[**send_test_sms**](SMSCampaignsApi.md#send_test_sms) | **POST** /smsCampaigns/{campaignId}/sendTest | Send an SMS
[**update_sms_campaign**](SMSCampaignsApi.md#update_sms_campaign) | **PUT** /smsCampaigns/{campaignId} | Updates a SMS campaign
[**update_sms_campaign_status**](SMSCampaignsApi.md#update_sms_campaign_status) | **PUT** /smsCampaigns/{campaignId}/status | Update the campaign status


# **create_sms_campaign**
> CreateModel create_sms_campaign(create_sms_campaign)

Creates a SMS campaign

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

api_instance = SendinblueApiv3::SMSCampaignsApi.new

create_sms_campaign = SendinblueApiv3::CreateSmsCampaign.new # CreateSmsCampaign | Values to create an SMS Campaign


begin
  #Creates a SMS campaign
  result = api_instance.create_sms_campaign(create_sms_campaign)
  p result
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling SMSCampaignsApi->create_sms_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_sms_campaign** | [**CreateSmsCampaign**](CreateSmsCampaign.md)| Values to create an SMS Campaign | 

### Return type

[**CreateModel**](CreateModel.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_sms_campaigns**
> delete_sms_campaigns(campaign_id)

Delete the SMS campaign

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

api_instance = SendinblueApiv3::SMSCampaignsApi.new

campaign_id = "campaign_id_example" # String | id of the SMS campaign


begin
  #Delete the SMS campaign
  api_instance.delete_sms_campaigns(campaign_id)
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling SMSCampaignsApi->delete_sms_campaigns: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **String**| id of the SMS campaign | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_sms_campaign**
> GetSmsCampaign get_sms_campaign(campaign_id, get_sms_campaign)

Get a SMS campaign

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

api_instance = SendinblueApiv3::SMSCampaignsApi.new

campaign_id = "campaign_id_example" # String | id of the SMS campaign

get_sms_campaign = SendinblueApiv3::GetSmsCampaign.new # GetSmsCampaign | Values to update an SMS Campaign


begin
  #Get a SMS campaign
  result = api_instance.get_sms_campaign(campaign_id, get_sms_campaign)
  p result
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling SMSCampaignsApi->get_sms_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **String**| id of the SMS campaign | 
 **get_sms_campaign** | [**GetSmsCampaign**](GetSmsCampaign.md)| Values to update an SMS Campaign | 

### Return type

[**GetSmsCampaign**](GetSmsCampaign.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_sms_campaigns**
> GetSmsCampaigns get_sms_campaigns(opts)

Returns the informations for all your created SMS campaigns

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

api_instance = SendinblueApiv3::SMSCampaignsApi.new

opts = { 
  status: "status_example", # String | Status of campaign.
  limit: 500, # Integer | Number limitation for the result returned
  offset: 0 # Integer | Beginning point in the list to retrieve from.
}

begin
  #Returns the informations for all your created SMS campaigns
  result = api_instance.get_sms_campaigns(opts)
  p result
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling SMSCampaignsApi->get_sms_campaigns: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **String**| Status of campaign. | [optional] 
 **limit** | **Integer**| Number limitation for the result returned | [optional] [default to 500]
 **offset** | **Integer**| Beginning point in the list to retrieve from. | [optional] [default to 0]

### Return type

[**GetSmsCampaigns**](GetSmsCampaigns.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **request_sms_recipient_export**
> CreatedProcessId request_sms_recipient_export(campaign_id, opts)

Exports the recipients of the specified campaign.

It returns the background process ID which on completion calls the notify URL that you have set in the input.

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

api_instance = SendinblueApiv3::SMSCampaignsApi.new

campaign_id = "campaign_id_example" # String | id of the campaign

opts = { 
  recipient_export: SendinblueApiv3::RequestSMSRecipientExport.new # RequestSMSRecipientExport | Values to send for a recipient export request
}

begin
  #Exports the recipients of the specified campaign.
  result = api_instance.request_sms_recipient_export(campaign_id, opts)
  p result
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling SMSCampaignsApi->request_sms_recipient_export: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **String**| id of the campaign | 
 **recipient_export** | [**RequestSMSRecipientExport**](RequestSMSRecipientExport.md)| Values to send for a recipient export request | [optional] 

### Return type

[**CreatedProcessId**](CreatedProcessId.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_sms_campaign_now**
> send_sms_campaign_now(campaign_id)

Send your SMS campaign immediately

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

api_instance = SendinblueApiv3::SMSCampaignsApi.new

campaign_id = "campaign_id_example" # String | id of the campaign


begin
  #Send your SMS campaign immediately
  api_instance.send_sms_campaign_now(campaign_id)
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling SMSCampaignsApi->send_sms_campaign_now: #{e}"
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



# **send_sms_report**
> send_sms_report(campaign_id, send_report)

Send report of SMS campaigns

Send report of Sent and Archived campaign, to the specified email addresses, with respective data and a pdf attachment in detail.

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

api_instance = SendinblueApiv3::SMSCampaignsApi.new

campaign_id = "campaign_id_example" # String | id of the campaign

send_report = SendinblueApiv3::SendReport.new # SendReport | Values for send a report


begin
  #Send report of SMS campaigns
  api_instance.send_sms_report(campaign_id, send_report)
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling SMSCampaignsApi->send_sms_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **String**| id of the campaign | 
 **send_report** | [**SendReport**](SendReport.md)| Values for send a report | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_test_sms**
> send_test_sms(campaign_id, send_test_sms)

Send an SMS

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

api_instance = SendinblueApiv3::SMSCampaignsApi.new

campaign_id = "campaign_id_example" # String | Id of the SMS campaign

send_test_sms = SendinblueApiv3::SendTestSms.new # SendTestSms | Mobile number to which send the test


begin
  #Send an SMS
  api_instance.send_test_sms(campaign_id, send_test_sms)
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling SMSCampaignsApi->send_test_sms: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **String**| Id of the SMS campaign | 
 **send_test_sms** | [**SendTestSms**](SendTestSms.md)| Mobile number to which send the test | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_sms_campaign**
> update_sms_campaign(campaign_id, update_sms_campaign)

Updates a SMS campaign

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

api_instance = SendinblueApiv3::SMSCampaignsApi.new

campaign_id = "campaign_id_example" # String | id of the SMS campaign

update_sms_campaign = SendinblueApiv3::UpdateSmsCampaign.new # UpdateSmsCampaign | Values to update an SMS Campaign


begin
  #Updates a SMS campaign
  api_instance.update_sms_campaign(campaign_id, update_sms_campaign)
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling SMSCampaignsApi->update_sms_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **String**| id of the SMS campaign | 
 **update_sms_campaign** | [**UpdateSmsCampaign**](UpdateSmsCampaign.md)| Values to update an SMS Campaign | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_sms_campaign_status**
> update_sms_campaign_status(campaign_id, status)

Update the campaign status

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

api_instance = SendinblueApiv3::SMSCampaignsApi.new

campaign_id = "campaign_id_example" # String | id of the campaign

status = SendinblueApiv3::UpdateCampaignStatus.new # UpdateCampaignStatus | Status of the campaign.


begin
  #Update the campaign status
  api_instance.update_sms_campaign_status(campaign_id, status)
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling SMSCampaignsApi->update_sms_campaign_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **String**| id of the campaign | 
 **status** | [**UpdateCampaignStatus**](UpdateCampaignStatus.md)| Status of the campaign. | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



