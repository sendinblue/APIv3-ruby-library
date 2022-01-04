# SibApiV3Sdk::Body

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of task | 
**duration** | **Integer** | Duration of task | [optional] 
**task_type_id** | **String** | Id for type of task e.g Call / Email / Meeting etc. | 
**date** | **DateTime** | Task date/time | 
**notes** | **String** | Notes added to a task | [optional] 
**done** | **BOOLEAN** | Task marked as done | [optional] 
**assign_to_id** | **String** | User id to whom task is assigned | [optional] 
**contacts_ids** | **Array&lt;Integer&gt;** | Contact ids for contacts linked to this task | [optional] 
**deals_ids** | **Array&lt;String&gt;** | Deal ids for deals a task is linked to | [optional] 
**companies_ids** | **Array&lt;String&gt;** | Companies ids for companies a task is linked to | [optional] 
**reminder** | [**TaskReminder**](TaskReminder.md) |  | [optional] 


