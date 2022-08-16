# SibApiV3Sdk::UpdateContact

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attributes** | **Object** | Pass the set of attributes to be updated. These attributes must be present in your account. To update existing email address of a contact with the new one please pass EMAIL in attributes. For example, &#x60;{ \&quot;EMAIL\&quot;:\&quot;newemail@domain.com\&quot;, \&quot;FNAME\&quot;:\&quot;Ellie\&quot;, \&quot;LNAME\&quot;:\&quot;Roger\&quot;}&#x60;. The attribute&#39;s parameter should be passed in capital letter while updating a contact. Keep in mind transactional attributes can be updated the same way as normal attributes. Mobile Number in \&quot;SMS\&quot; field should be passed with proper country code. For example {\&quot;SMS\&quot;:\&quot;+91xxxxxxxxxx\&quot;} or {\&quot;SMS\&quot;:\&quot;0091xxxxxxxxxx\&quot;} | [optional] 
**email_blacklisted** | **BOOLEAN** | Set/unset this field to blacklist/allow the contact for emails (emailBlacklisted &#x3D; true) | [optional] 
**sms_blacklisted** | **BOOLEAN** | Set/unset this field to blacklist/allow the contact for SMS (smsBlacklisted &#x3D; true) | [optional] 
**list_ids** | **Array&lt;Integer&gt;** | Ids of the lists to add the contact to | [optional] 
**unlink_list_ids** | **Array&lt;Integer&gt;** | Ids of the lists to remove the contact from | [optional] 
**smtp_blacklist_sender** | **Array&lt;String&gt;** | transactional email forbidden sender for contact. Use only for email Contact | [optional] 


