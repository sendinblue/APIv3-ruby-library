# SibApiV3Sdk::RequestContactImport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_url** | **String** | Mandatory if fileBody is not defined. URL of the file to be imported (no local file). Possible file formats: .txt, .csv | [optional] |
| **file_body** | **String** | Mandatory if fileUrl is not defined. CSV content to be imported. Use semicolon to separate multiple attributes. Maximum allowed file body size is 10MB . However we recommend a safe limit of around 8 MB to avoid the issues caused due to increase of file body size while parsing. Please use fileUrl instead to import bigger files. | [optional] |
| **list_ids** | **Array&lt;Integer&gt;** | Mandatory if newList is not defined. Ids of the lists in which the contacts shall be imported. For example, [2, 4, 7]. | [optional] |
| **notify_url** | **String** | URL that will be called once the import process is finished. For reference, https://help.sendinblue.com/hc/en-us/articles/360007666479 | [optional] |
| **new_list** | [**RequestContactImportNewList**](RequestContactImportNewList.md) |  | [optional] |
| **email_blacklist** | **Boolean** | To blacklist all the contacts for email | [optional][default to false] |
| **sms_blacklist** | **Boolean** | To blacklist all the contacts for sms | [optional][default to false] |
| **update_existing_contacts** | **Boolean** | To facilitate the choice to update the existing contacts | [optional][default to true] |
| **empty_contacts_attributes** | **Boolean** | To facilitate the choice to erase any attribute of the existing contacts with empty value. emptyContactsAttributes &#x3D; true means the empty fields in your import will erase any attribute that currently contain data in SendinBlue, &amp; emptyContactsAttributes &#x3D; false means the empty fields will not affect your existing data ( only available if &#x60;updateExistingContacts&#x60; set to true ) | [optional][default to false] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::RequestContactImport.new(
  file_url: https://importfile.domain.com,
  file_body: NAME;SURNAME;EMAIL\n&quot;Smith&quot;;&quot;John&quot;;&quot;john.smith@example.com&quot;\n&quot;Roger&quot;;&quot;Ellie&quot;;&quot;ellie36@example.com,
  list_ids: null,
  notify_url: http://requestb.in/173lyyx1,
  new_list: null,
  email_blacklist: false,
  sms_blacklist: false,
  update_existing_contacts: true,
  empty_contacts_attributes: true
)
```

