# SibApiV3Sdk::AddContactToList

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**emails** | **Array&lt;String&gt;** | Mandatory if IDs are not passed, ignored otherwise. Emails to add to a list. You can pass a maximum of 150 emails for addition in one request. If you need to add the emails in bulk, please prefer /contacts/import api. | [optional] 
**ids** | **Array&lt;Integer&gt;** | Mandatory if Emails are not passed, ignored otherwise. Emails to add to a list. You can pass a maximum of 150 emails for addition in one request. If you need to add the emails in bulk, please prefer /contacts/import api. | [optional] 


