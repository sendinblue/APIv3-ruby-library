# SibApiV3Sdk::TransactionalSMSApi

All URIs are relative to *https://api.sendinblue.com/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_sms_events**](TransactionalSMSApi.md#get_sms_events) | **GET** /transactionalSMS/statistics/events | Get all your SMS activity (unaggregated events) |
| [**get_transac_aggregated_sms_report**](TransactionalSMSApi.md#get_transac_aggregated_sms_report) | **GET** /transactionalSMS/statistics/aggregatedReport | Get your SMS activity aggregated over a period of time |
| [**get_transac_sms_report**](TransactionalSMSApi.md#get_transac_sms_report) | **GET** /transactionalSMS/statistics/reports | Get your SMS activity aggregated per day |
| [**send_transac_sms**](TransactionalSMSApi.md#send_transac_sms) | **POST** /transactionalSMS/sms | Send SMS message to a mobile number |


## get_sms_events

> <GetSmsEventReport> get_sms_events(opts)

Get all your SMS activity (unaggregated events)

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

api_instance = SibApiV3Sdk::TransactionalSMSApi.new
opts = {
  limit: 789, # Integer | Number of documents per page
  start_date: 'start_date_example', # String | Mandatory if endDate is used. Starting date (YYYY-MM-DD) of the report
  end_date: 'end_date_example', # String | Mandatory if startDate is used. Ending date (YYYY-MM-DD) of the report
  offset: 789, # Integer | Index of the first document of the page
  days: 789, # Integer | Number of days in the past including today (positive integer). Not compatible with 'startDate' and 'endDate'
  phone_number: 'phone_number_example', # String | Filter the report for a specific phone number
  event: 'bounces', # String | Filter the report for specific events
  tags: 'tags_example', # String | Filter the report for specific tags passed as a serialized urlencoded array
  sort: 'asc' # String | Sort the results in the ascending/descending order of record creation. Default order is **descending** if `sort` is not passed
}

begin
  # Get all your SMS activity (unaggregated events)
  result = api_instance.get_sms_events(opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling TransactionalSMSApi->get_sms_events: #{e}"
end
```

#### Using the get_sms_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSmsEventReport>, Integer, Hash)> get_sms_events_with_http_info(opts)

```ruby
begin
  # Get all your SMS activity (unaggregated events)
  data, status_code, headers = api_instance.get_sms_events_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSmsEventReport>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling TransactionalSMSApi->get_sms_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Number of documents per page | [optional][default to 50] |
| **start_date** | **String** | Mandatory if endDate is used. Starting date (YYYY-MM-DD) of the report | [optional] |
| **end_date** | **String** | Mandatory if startDate is used. Ending date (YYYY-MM-DD) of the report | [optional] |
| **offset** | **Integer** | Index of the first document of the page | [optional][default to 0] |
| **days** | **Integer** | Number of days in the past including today (positive integer). Not compatible with &#39;startDate&#39; and &#39;endDate&#39; | [optional] |
| **phone_number** | **String** | Filter the report for a specific phone number | [optional] |
| **event** | **String** | Filter the report for specific events | [optional] |
| **tags** | **String** | Filter the report for specific tags passed as a serialized urlencoded array | [optional] |
| **sort** | **String** | Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional][default to &#39;desc&#39;] |

### Return type

[**GetSmsEventReport**](GetSmsEventReport.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_transac_aggregated_sms_report

> <GetTransacAggregatedSmsReport> get_transac_aggregated_sms_report(opts)

Get your SMS activity aggregated over a period of time

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

api_instance = SibApiV3Sdk::TransactionalSMSApi.new
opts = {
  start_date: 'start_date_example', # String | Mandatory if endDate is used. Starting date (YYYY-MM-DD) of the report
  end_date: 'end_date_example', # String | Mandatory if startDate is used. Ending date (YYYY-MM-DD) of the report
  days: 789, # Integer | Number of days in the past including today (positive integer). Not compatible with startDate and endDate
  tag: 'tag_example' # String | Filter on a tag
}

begin
  # Get your SMS activity aggregated over a period of time
  result = api_instance.get_transac_aggregated_sms_report(opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling TransactionalSMSApi->get_transac_aggregated_sms_report: #{e}"
end
```

#### Using the get_transac_aggregated_sms_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTransacAggregatedSmsReport>, Integer, Hash)> get_transac_aggregated_sms_report_with_http_info(opts)

```ruby
begin
  # Get your SMS activity aggregated over a period of time
  data, status_code, headers = api_instance.get_transac_aggregated_sms_report_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTransacAggregatedSmsReport>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling TransactionalSMSApi->get_transac_aggregated_sms_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **String** | Mandatory if endDate is used. Starting date (YYYY-MM-DD) of the report | [optional] |
| **end_date** | **String** | Mandatory if startDate is used. Ending date (YYYY-MM-DD) of the report | [optional] |
| **days** | **Integer** | Number of days in the past including today (positive integer). Not compatible with startDate and endDate | [optional] |
| **tag** | **String** | Filter on a tag | [optional] |

### Return type

[**GetTransacAggregatedSmsReport**](GetTransacAggregatedSmsReport.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_transac_sms_report

> <GetTransacSmsReport> get_transac_sms_report(opts)

Get your SMS activity aggregated per day

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

api_instance = SibApiV3Sdk::TransactionalSMSApi.new
opts = {
  start_date: 'start_date_example', # String | Mandatory if endDate is used. Starting date (YYYY-MM-DD) of the report
  end_date: 'end_date_example', # String | Mandatory if startDate is used. Ending date (YYYY-MM-DD) of the report
  days: 789, # Integer | Number of days in the past including today (positive integer). Not compatible with 'startDate' and 'endDate'
  tag: 'tag_example', # String | Filter on a tag
  sort: 'asc' # String | Sort the results in the ascending/descending order of record creation. Default order is **descending** if `sort` is not passed
}

begin
  # Get your SMS activity aggregated per day
  result = api_instance.get_transac_sms_report(opts)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling TransactionalSMSApi->get_transac_sms_report: #{e}"
end
```

#### Using the get_transac_sms_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTransacSmsReport>, Integer, Hash)> get_transac_sms_report_with_http_info(opts)

```ruby
begin
  # Get your SMS activity aggregated per day
  data, status_code, headers = api_instance.get_transac_sms_report_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTransacSmsReport>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling TransactionalSMSApi->get_transac_sms_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **String** | Mandatory if endDate is used. Starting date (YYYY-MM-DD) of the report | [optional] |
| **end_date** | **String** | Mandatory if startDate is used. Ending date (YYYY-MM-DD) of the report | [optional] |
| **days** | **Integer** | Number of days in the past including today (positive integer). Not compatible with &#39;startDate&#39; and &#39;endDate&#39; | [optional] |
| **tag** | **String** | Filter on a tag | [optional] |
| **sort** | **String** | Sort the results in the ascending/descending order of record creation. Default order is **descending** if &#x60;sort&#x60; is not passed | [optional][default to &#39;desc&#39;] |

### Return type

[**GetTransacSmsReport**](GetTransacSmsReport.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_transac_sms

> <SendSms> send_transac_sms(send_transac_sms)

Send SMS message to a mobile number

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

api_instance = SibApiV3Sdk::TransactionalSMSApi.new
send_transac_sms = SibApiV3Sdk::SendTransacSms.new({sender: 'MyShop', recipient: '33689965433', content: 'Enter this code:CCJJG8 to validate your account'}) # SendTransacSms | Values to send a transactional SMS

begin
  # Send SMS message to a mobile number
  result = api_instance.send_transac_sms(send_transac_sms)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling TransactionalSMSApi->send_transac_sms: #{e}"
end
```

#### Using the send_transac_sms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendSms>, Integer, Hash)> send_transac_sms_with_http_info(send_transac_sms)

```ruby
begin
  # Send SMS message to a mobile number
  data, status_code, headers = api_instance.send_transac_sms_with_http_info(send_transac_sms)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendSms>
rescue SibApiV3Sdk::ApiError => e
  puts "Error when calling TransactionalSMSApi->send_transac_sms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **send_transac_sms** | [**SendTransacSms**](SendTransacSms.md) | Values to send a transactional SMS |  |

### Return type

[**SendSms**](SendSms.md)

### Authorization

[api-key](../README.md#api-key), [partner-key](../README.md#partner-key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

