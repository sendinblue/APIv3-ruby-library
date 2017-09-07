# SendinblueApiv3::TransactionalSMSApi

All URIs are relative to *https://api.sendinblue.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_sms_events**](TransactionalSMSApi.md#get_sms_events) | **GET** /transactionalSMS/statistics/events | Get all the SMS activity (unaggregated events)
[**get_transac_aggregated_sms_report**](TransactionalSMSApi.md#get_transac_aggregated_sms_report) | **GET** /transactionalSMS/statistics/aggregatedReport | Get your SMS activity aggregated over a period of time
[**get_transac_sms_report**](TransactionalSMSApi.md#get_transac_sms_report) | **GET** /transactionalSMS/statistics/reports | Get your SMS activity aggregated per day
[**send_transac_sms**](TransactionalSMSApi.md#send_transac_sms) | **POST** /transactionalSMS/sms | Send the SMS campaign to the specified mobile number


# **get_sms_events**
> GetSmsEventReport get_sms_events(opts)

Get all the SMS activity (unaggregated events)

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

api_instance = SendinblueApiv3::TransactionalSMSApi.new

opts = { 
  limit: 50, # Integer | Number of documents per page
  start_date: Date.parse("2013-10-20"), # Date | Mandatory if endDate is used. Starting date (YYYY-MM-DD) of the report
  end_date: Date.parse("2013-10-20"), # Date | Mandatory if startDate is used. Ending date (YYYY-MM-DD) of the report
  offset: 0, # Integer | Index of the first document of the page
  days: 56, # Integer | Number of days in the past including today (positive integer). Not compatible with 'startDate' and 'endDate'
  phone_number: "phone_number_example", # String | Filter the report for a specific phone number
  event: "event_example", # String | Filter the report for specific events
  tags: "tags_example" # String | Filter the report for specific tags passed as a serialized urlencoded array
}

begin
  #Get all the SMS activity (unaggregated events)
  result = api_instance.get_sms_events(opts)
  p result
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling TransactionalSMSApi->get_sms_events: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Number of documents per page | [optional] [default to 50]
 **start_date** | **Date**| Mandatory if endDate is used. Starting date (YYYY-MM-DD) of the report | [optional] 
 **end_date** | **Date**| Mandatory if startDate is used. Ending date (YYYY-MM-DD) of the report | [optional] 
 **offset** | **Integer**| Index of the first document of the page | [optional] [default to 0]
 **days** | **Integer**| Number of days in the past including today (positive integer). Not compatible with &#39;startDate&#39; and &#39;endDate&#39; | [optional] 
 **phone_number** | **String**| Filter the report for a specific phone number | [optional] 
 **event** | **String**| Filter the report for specific events | [optional] 
 **tags** | **String**| Filter the report for specific tags passed as a serialized urlencoded array | [optional] 

### Return type

[**GetSmsEventReport**](GetSmsEventReport.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_transac_aggregated_sms_report**
> GetTransacAggregatedSmsReport get_transac_aggregated_sms_report(opts)

Get your SMS activity aggregated over a period of time

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

api_instance = SendinblueApiv3::TransactionalSMSApi.new

opts = { 
  start_date: Date.parse("2013-10-20"), # Date | Mandatory if endDate is used. Starting date (YYYY-MM-DD) of the report
  end_date: Date.parse("2013-10-20"), # Date | Mandatory if startDate is used. Ending date (YYYY-MM-DD) of the report
  days: 56, # Integer | Number of days in the past including today (positive integer). Not compatible with startDate and endDate
  tag: "tag_example" # String | Filter on a tag
}

begin
  #Get your SMS activity aggregated over a period of time
  result = api_instance.get_transac_aggregated_sms_report(opts)
  p result
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling TransactionalSMSApi->get_transac_aggregated_sms_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **Date**| Mandatory if endDate is used. Starting date (YYYY-MM-DD) of the report | [optional] 
 **end_date** | **Date**| Mandatory if startDate is used. Ending date (YYYY-MM-DD) of the report | [optional] 
 **days** | **Integer**| Number of days in the past including today (positive integer). Not compatible with startDate and endDate | [optional] 
 **tag** | **String**| Filter on a tag | [optional] 

### Return type

[**GetTransacAggregatedSmsReport**](GetTransacAggregatedSmsReport.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_transac_sms_report**
> GetTransacSmsReport get_transac_sms_report(opts)

Get your SMS activity aggregated per day

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

api_instance = SendinblueApiv3::TransactionalSMSApi.new

opts = { 
  start_date: Date.parse("2013-10-20"), # Date | Mandatory if endDate is used. Starting date (YYYY-MM-DD) of the report
  end_date: Date.parse("2013-10-20"), # Date | Mandatory if startDate is used. Ending date (YYYY-MM-DD) of the report
  days: 56, # Integer | Number of days in the past including today (positive integer). Not compatible with 'startDate' and 'endDate'
  tag: "tag_example" # String | Filter on a tag
}

begin
  #Get your SMS activity aggregated per day
  result = api_instance.get_transac_sms_report(opts)
  p result
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling TransactionalSMSApi->get_transac_sms_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_date** | **Date**| Mandatory if endDate is used. Starting date (YYYY-MM-DD) of the report | [optional] 
 **end_date** | **Date**| Mandatory if startDate is used. Ending date (YYYY-MM-DD) of the report | [optional] 
 **days** | **Integer**| Number of days in the past including today (positive integer). Not compatible with &#39;startDate&#39; and &#39;endDate&#39; | [optional] 
 **tag** | **String**| Filter on a tag | [optional] 

### Return type

[**GetTransacSmsReport**](GetTransacSmsReport.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_transac_sms**
> SendSms send_transac_sms(send_transac_sms)

Send the SMS campaign to the specified mobile number

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

api_instance = SendinblueApiv3::TransactionalSMSApi.new

send_transac_sms = SendinblueApiv3::SendTransacSms.new # SendTransacSms | Values to send a transactional SMS


begin
  #Send the SMS campaign to the specified mobile number
  result = api_instance.send_transac_sms(send_transac_sms)
  p result
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling TransactionalSMSApi->send_transac_sms: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **send_transac_sms** | [**SendTransacSms**](SendTransacSms.md)| Values to send a transactional SMS | 

### Return type

[**SendSms**](SendSms.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



