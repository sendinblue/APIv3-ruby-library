# SibApiV3Sdk::InboundParsingApi

All URIs are relative to *https://api.sendinblue.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_inbound_email_attachment**](InboundParsingApi.md#get_inbound_email_attachment) | **GET** /inbound/attachments/{downloadToken} | Retrieve inbound attachment with download token.
[**get_inbound_email_events**](InboundParsingApi.md#get_inbound_email_events) | **GET** /inbound/events | Get the list of all the events for the received emails.
[**get_inbound_email_events_by_uuid**](InboundParsingApi.md#get_inbound_email_events_by_uuid) | **GET** /inbound/events/{uuid} | Fetch all events history for one particular received email.


# **get_inbound_email_attachment**
> File get_inbound_email_attachment(download_token)

Retrieve inbound attachment with download token.

This endpoint will retrieve inbound attachment with download token.

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

api_instance = SibApiV3Sdk::InboundParsingApi.new

download_token = 'download_token_example' # String | Token to fetch a particular attachment


begin
  #Retrieve inbound attachment with download token.
  result = api_instance.get_inbound_email_attachment(download_token)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling InboundParsingApi->get_inbound_email_attachment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **download_token** | **String**| Token to fetch a particular attachment | 

### Return type

**File**

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_inbound_email_events**
> GetInboundEmailEvents get_inbound_email_events(opts)

Get the list of all the events for the received emails.

This endpoint will show the list of all the events for the received emails.

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

api_instance = SibApiV3Sdk::InboundParsingApi.new

opts = { 
  sender: 'sender_example', # String | Email address of the sender.
  start_date: Date.parse('2013-10-20'), # Date | Mandatory if endDate is used. Starting date (YYYY-MM-DD) from which you want to fetch the list. Maximum time period that can be selected is one month.
  end_date: Date.parse('2013-10-20'), # Date | Mandatory if startDate is used. Ending date (YYYY-MM-DD) till which you want to fetch the list. Maximum time period that can be selected is one month.
  limit: 100, # Integer | Number of documents returned per page
  offset: 0, # Integer | Index of the first document on the page
  sort: 'desc' # String | Sort the results in the ascending/descending order of record creation
}

begin
  #Get the list of all the events for the received emails.
  result = api_instance.get_inbound_email_events(opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling InboundParsingApi->get_inbound_email_events: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sender** | **String**| Email address of the sender. | [optional] 
 **start_date** | **Date**| Mandatory if endDate is used. Starting date (YYYY-MM-DD) from which you want to fetch the list. Maximum time period that can be selected is one month. | [optional] 
 **end_date** | **Date**| Mandatory if startDate is used. Ending date (YYYY-MM-DD) till which you want to fetch the list. Maximum time period that can be selected is one month. | [optional] 
 **limit** | **Integer**| Number of documents returned per page | [optional] [default to 100]
 **offset** | **Integer**| Index of the first document on the page | [optional] [default to 0]
 **sort** | **String**| Sort the results in the ascending/descending order of record creation | [optional] [default to desc]

### Return type

[**GetInboundEmailEvents**](GetInboundEmailEvents.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_inbound_email_events_by_uuid**
> GetInboundEmailEventsByUuid get_inbound_email_events_by_uuid(uuid)

Fetch all events history for one particular received email.

This endpoint will show the list of all events history for one particular received email.

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

api_instance = SibApiV3Sdk::InboundParsingApi.new

uuid = 'uuid_example' # String | UUID to fetch events specific to recieved email


begin
  #Fetch all events history for one particular received email.
  result = api_instance.get_inbound_email_events_by_uuid(uuid)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling InboundParsingApi->get_inbound_email_events_by_uuid: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID to fetch events specific to recieved email | 

### Return type

[**GetInboundEmailEventsByUuid**](GetInboundEmailEventsByUuid.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



