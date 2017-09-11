# SibApiV3Sdk::CreateContact

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | Email address of the user. Mandatory if &#x60;attributes.sms&#x60; is not passed | [optional] 
**attributes** | **Object** | Values of the attributes to fill. The attributes must exist in you contact database | [optional] 
**email_blacklisted** | **BOOLEAN** | Blacklist the contact for emails (emailBlacklisted &#x3D; true) | [optional] 
**sms_blacklisted** | **BOOLEAN** | Blacklist the contact for SMS (smsBlacklisted &#x3D; true) | [optional] 
**list_ids** | **Array&lt;Integer&gt;** | Ids of the lists to add the contact to | [optional] 


