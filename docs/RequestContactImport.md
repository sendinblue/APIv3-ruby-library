# SibApiV3Sdk::RequestContactImport

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**file_url** | **String** | Mandatory if fileBody is not defined. URL of the file to be imported (no local file). Possible file formats: .txt, .csv | [optional] 
**file_body** | **String** | Mandatory if fileUrl is not defined. CSV content to be imported. Use semicolon to separate multiple attributes. Maximum allowed file body size is 10MB . However we recommend a safe limit of around 8 MB to avoid the issues caused due to increase of file body size while parsing. Please use fileUrl instead to import bigger files. | [optional] 
**list_ids** | **Array&lt;Integer&gt;** | Mandatory if newList is not defined. Ids of the lists in which the contacts shall be imported. For example, [2, 4, 7]. | [optional] 
**notify_url** | **String** | URL that will be called once the export process is finished | [optional] 
**new_list** | [**RequestContactImportNewList**](RequestContactImportNewList.md) |  | [optional] 
**email_blacklist** | **BOOLEAN** | To blacklist all the contacts for email | [optional] [default to false]
**sms_blacklist** | **BOOLEAN** | To blacklist all the contacts for sms | [optional] [default to false]
**update_existing_contacts** | **BOOLEAN** | To facilitate the choice to update the existing contacts | [optional] [default to true]
**empty_contacts_attributes** | **BOOLEAN** | To facilitate the choice to erase any attribute of the existing contacts with empty value. emptyContactsAttributes &#x3D; true means the empty fields in your import will erase any attribute that currently contain data in SendinBlue, &amp; emptyContactsAttributes &#x3D; false means the empty fields will not affect your existing data ( only available if &#x60;updateExistingContacts&#x60; set to true ) | [optional] [default to false]


