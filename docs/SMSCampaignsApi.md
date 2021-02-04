# SibApiV3Sdk::SMSCampaignsApi

All URIs are relative to *https://api.sendinblue.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_sms_campaign**](SMSCampaignsApi.md#create_sms_campaign) | **POST** /smsCampaigns | Creates an SMS campaign
[**delete_sms_campaign**](SMSCampaignsApi.md#delete_sms_campaign) | **DELETE** /smsCampaigns/{campaignId} | Delete an SMS campaign
[**get_sms_campaign**](SMSCampaignsApi.md#get_sms_campaign) | **GET** /smsCampaigns/{campaignId} | Get an SMS campaign
[**get_sms_campaigns**](SMSCampaignsApi.md#get_sms_campaigns) | **GET** /smsCampaigns | Returns the information for all your created SMS campaigns
[**request_sms_recipient_export**](SMSCampaignsApi.md#request_sms_recipient_export) | **POST** /smsCampaigns/{campaignId}/exportRecipients | Export an SMS campaign&#39;s recipients
[**send_sms_campaign_now**](SMSCampaignsApi.md#send_sms_campaign_now) | **POST** /smsCampaigns/{campaignId}/sendNow | Send your SMS campaign immediately
[**send_sms_report**](SMSCampaignsApi.md#send_sms_report) | **POST** /smsCampaigns/{campaignId}/sendReport | Send an SMS campaign&#39;s report
[**send_test_sms**](SMSCampaignsApi.md#send_test_sms) | **POST** /smsCampaigns/{campaignId}/sendTest | Send a test SMS campaign
[**update_sms_campaign**](SMSCampaignsApi.md#update_sms_campaign) | **PUT** /smsCampaigns/{campaignId} | Update an SMS campaign
[**update_sms_campaign_status**](SMSCampaignsApi.md#update_sms_campaign_status) | **PUT** /smsCampaigns/{campaignId}/status | Update a campaign&#39;s status


# **create_sms_campaign**
> CreateModel create_sms_campaign(create_sms_campaign)

Creates an SMS campaign

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

api_instance = SibApiV3Sdk::SMSCampaignsApi.new

create_sms_campaign = SibApiV3Sdk::CreateSmsCampaign.new # CreateSmsCampaign | Values to create an SMS Campaign


begin
  #Creates an SMS campaign
  result = api_instance.create_sms_campaign(create_sms_campaign)
  p result
rescue SibApiV3Sdk::ApiError => e
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

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_sms_campaign**
> delete_sms_campaign(campaign_id)

Delete an SMS campaign

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

api_instance = SibApiV3Sdk::SMSCampaignsApi.new

campaign_id = 789 # Integer | id of the SMS campaign


begin
  #Delete an SMS campaign
  api_instance.delete_sms_campaign(campaign_id)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling SMSCampaignsApi->delete_sms_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| id of the SMS campaign | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_sms_campaign**
> GetSmsCampaign get_sms_campaign(campaign_id)

Get an SMS campaign

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

api_instance = SibApiV3Sdk::SMSCampaignsApi.new

campaign_id = 789 # Integer | id of the SMS campaign


begin
  #Get an SMS campaign
  result = api_instance.get_sms_campaign(campaign_id)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling SMSCampaignsApi->get_sms_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| id of the SMS campaign | 

### Return type

[**GetSmsCampaign**](GetSmsCampaign.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_sms_campaigns**
> GetSmsCampaigns get_sms_campaigns(opts)

Returns the information for all your created SMS campaigns

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

api_instance = SibApiV3Sdk::SMSCampaignsApi.new

opts = { 
  status: 'status_example', # String | Status of campaign.
  start_date: 'start_date_example', # String | Mandatory if endDate is used. Starting (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the sent sms campaigns. Prefer to pass your timezone in date-time format for accurate result ( only available if either 'status' not passed and if passed is set to 'sent' )
  end_date: 'end_date_example', # String | Mandatory if startDate is used. Ending (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the sent sms campaigns. Prefer to pass your timezone in date-time format for accurate result ( only available if either 'status' not passed and if passed is set to 'sent' )
  limit: 500, # Integer | Number limitation for the result returned
  offset: 0, # Integer | Beginning point in the list to retrieve from.
  sort: 'desc' # String | Sort the results in the ascending/descending order of record creation. Default order is **descending** if `sort` is not passed
}

begin
  #Returns the information for all your created SMS campaigns
  result = api_instance.get_sms_campaigns(opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling SMSCampaignsApi->get_sms_campaigns: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **String**| Status of campaign. | [optional] 
 **start_date** | **String**| Mandatory if endDate is used. Starting (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the sent sms campaigns. Prefer to pass your timezone in date-time format for accurate result ( only available if either &#39;status&#39; not passed and if passed is set to &#39;sent&#39; ) | [optional] 
 **end_date** | **String**| Mandatory if startDate is used. Ending (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the sent sms campaigns. Prefer to pass your timezone in date-time format for accurate result ( only available if either &#39;status&#39; not passed and if passed is set to &#39;sent&#39; ) | [optional] 
 **limit** | **Integer**| Number limitation for the result returned | [optional] [default to 500]
 **offset** | **Integer**| Beginning point in the list to retrieve from. | [optional] [default to 0]
 **sort** | **String**| Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional] [default to desc]

### Return type

[**GetSmsCampaigns**](GetSmsCampaigns.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **request_sms_recipient_export**
> CreatedProcessId request_sms_recipient_export(campaign_id, opts)

Export an SMS campaign's recipients

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

  # Configure API key authorization: partner-key
  config.api_key['partner-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['partner-key'] = 'Bearer'
end

api_instance = SibApiV3Sdk::SMSCampaignsApi.new

campaign_id = 789 # Integer | id of the campaign

opts = { 
  recipient_export: SibApiV3Sdk::RequestSmsRecipientExport.new # RequestSmsRecipientExport | Values to send for a recipient export request
}

begin
  #Export an SMS campaign's recipients
  result = api_instance.request_sms_recipient_export(campaign_id, opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling SMSCampaignsApi->request_sms_recipient_export: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| id of the campaign | 
 **recipient_export** | [**RequestSmsRecipientExport**](RequestSmsRecipientExport.md)| Values to send for a recipient export request | [optional] 

### Return type

[**CreatedProcessId**](CreatedProcessId.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_sms_campaign_now**
> send_sms_campaign_now(campaign_id)

Send your SMS campaign immediately

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

api_instance = SibApiV3Sdk::SMSCampaignsApi.new

campaign_id = 789 # Integer | id of the campaign


begin
  #Send your SMS campaign immediately
  api_instance.send_sms_campaign_now(campaign_id)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling SMSCampaignsApi->send_sms_campaign_now: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| id of the campaign | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_sms_report**
> send_sms_report(campaign_id, send_report)

Send an SMS campaign's report

Send report of Sent and Archived campaign, to the specified email addresses, with respective data and a pdf attachment in detail.

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

api_instance = SibApiV3Sdk::SMSCampaignsApi.new

campaign_id = 789 # Integer | id of the campaign

send_report = SibApiV3Sdk::SendReport.new # SendReport | Values for send a report


begin
  #Send an SMS campaign's report
  api_instance.send_sms_report(campaign_id, send_report)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling SMSCampaignsApi->send_sms_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| id of the campaign | 
 **send_report** | [**SendReport**](SendReport.md)| Values for send a report | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_test_sms**
> send_test_sms(campaign_id, phone_number)

Send a test SMS campaign

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

api_instance = SibApiV3Sdk::SMSCampaignsApi.new

campaign_id = 789 # Integer | Id of the SMS campaign

phone_number = SibApiV3Sdk::SendTestSms.new # SendTestSms | Mobile number of the recipient with the country code. This number must belong to one of your contacts in SendinBlue account and must not be blacklisted


begin
  #Send a test SMS campaign
  api_instance.send_test_sms(campaign_id, phone_number)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling SMSCampaignsApi->send_test_sms: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| Id of the SMS campaign | 
 **phone_number** | [**SendTestSms**](SendTestSms.md)| Mobile number of the recipient with the country code. This number must belong to one of your contacts in SendinBlue account and must not be blacklisted | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_sms_campaign**
> update_sms_campaign(campaign_id, update_sms_campaign)

Update an SMS campaign

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

api_instance = SibApiV3Sdk::SMSCampaignsApi.new

campaign_id = 789 # Integer | id of the SMS campaign

update_sms_campaign = SibApiV3Sdk::UpdateSmsCampaign.new # UpdateSmsCampaign | Values to update an SMS Campaign


begin
  #Update an SMS campaign
  api_instance.update_sms_campaign(campaign_id, update_sms_campaign)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling SMSCampaignsApi->update_sms_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| id of the SMS campaign | 
 **update_sms_campaign** | [**UpdateSmsCampaign**](UpdateSmsCampaign.md)| Values to update an SMS Campaign | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_sms_campaign_status**
> update_sms_campaign_status(campaign_id, status)

Update a campaign's status

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

api_instance = SibApiV3Sdk::SMSCampaignsApi.new

campaign_id = 789 # Integer | id of the campaign

status = SibApiV3Sdk::UpdateCampaignStatus.new # UpdateCampaignStatus | Status of the campaign.


begin
  #Update a campaign's status
  api_instance.update_sms_campaign_status(campaign_id, status)
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling SMSCampaignsApi->update_sms_campaign_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **campaign_id** | **Integer**| id of the campaign | 
 **status** | [**UpdateCampaignStatus**](UpdateCampaignStatus.md)| Status of the campaign. | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



