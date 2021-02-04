# SibApiV3Sdk::GetContactDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | Email address of the contact for which you requested the details | 
**id** | **Integer** | ID of the contact for which you requested the details | 
**email_blacklisted** | **BOOLEAN** | Blacklist status for email campaigns (true&#x3D;blacklisted, false&#x3D;not blacklisted) | 
**sms_blacklisted** | **BOOLEAN** | Blacklist status for SMS campaigns (true&#x3D;blacklisted, false&#x3D;not blacklisted) | 
**created_at** | **String** | Creation UTC date-time of the contact (YYYY-MM-DDTHH:mm:ss.SSSZ) | 
**modified_at** | **String** | Last modification UTC date-time of the contact (YYYY-MM-DDTHH:mm:ss.SSSZ) | 
**list_ids** | **Array&lt;Integer&gt;** |  | 
**list_unsubscribed** | **Array&lt;Integer&gt;** |  | [optional] 
**attributes** | **Object** | Set of attributes of the contact | 


