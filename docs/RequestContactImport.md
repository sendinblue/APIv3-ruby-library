# SendinblueApiv3::RequestContactImport

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**file_url** | **String** | Mandatory if fileBody not defined. URL of the file to be imported (no local file). Possible file types: .txt, .csv | [optional] 
**file_body** | **String** | Mandatory if fileUrl is not defined. CSV content to be imported. Use semicolon to separate multiple attributes | [optional] 
**list_ids** | **Array&lt;Integer&gt;** | Manadatory if newList is not defined. Ids of the lists in which to add the contacts | [optional] 
**notify_url** | **String** | URL that will be called once the export process is finished | [optional] 
**new_list** | [**RequestContactImportNewList**](RequestContactImportNewList.md) |  | [optional] 


