# SibApiV3Sdk::RequestContactExport

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**export_attributes** | **Array&lt;String&gt;** | List of all the attributes that you want to export. These attributes must be present in your contact database. For example, [&#39;fname&#39;, &#39;lname&#39;, &#39;email&#39;]. | [optional] 
**custom_contact_filter** | [**RequestContactExportCustomContactFilter**](RequestContactExportCustomContactFilter.md) |  | 
**notify_url** | **String** | Webhook that will be called once the export process is finished. For reference, https://help.sendinblue.com/hc/en-us/articles/360007666479 | [optional] 


