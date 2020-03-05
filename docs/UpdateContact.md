# SibApiV3Sdk::UpdateContact

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attributes** | **Object** | Pass the set of attributes to be updated. These attributes must be present in your account. To update existing email address of a contact with the new one please pass EMAIL in attribtes. For example, { &#39;EMAIL&#39;:&#39;newemail@domain.com&#39;, &#39;FNAME&#39;:&#39;Ellie&#39;, &#39;LNAME&#39;:&#39;Roger&#39;} &#x60;{ \&quot;EMAIL\&quot;:\&quot;newemail@domain.com\&quot;, \&quot;FNAME\&quot;:\&quot;Ellie\&quot;, \&quot;LNAME\&quot;:\&quot;Roger\&quot;}&#x60;. Keep in mind transactional attributes can be updated the same way as normal attributes. | [optional] 
**email_blacklisted** | **BOOLEAN** | Set/unset this field to blacklist/allow the contact for emails (emailBlacklisted &#x3D; true) | [optional] 
**sms_blacklisted** | **BOOLEAN** | Set/unset this field to blacklist/allow the contact for SMS (smsBlacklisted &#x3D; true) | [optional] 
**list_ids** | **Array&lt;Integer&gt;** | Ids of the lists to add the contact to | [optional] 
**unlink_list_ids** | **Array&lt;Integer&gt;** | Ids of the lists to remove the contact from | [optional] 
**smtp_blacklist_sender** | **Array&lt;String&gt;** | transactional email forbidden sender for contact. Use only for email Contact | [optional] 


