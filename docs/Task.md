# SibApiV3Sdk::Task

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_contact** | [**Contact**](Contact.md) |  | [optional] 
**id** | **String** | Unique task id | [optional] 
**task_type_id** | **String** | Id for type of task e.g Call / Email / Meeting etc. | 
**name** | **String** | Name of task | 
**contacts_ids** | **Array&lt;Integer&gt;** | Contact ids for contacts linked to this task | [optional] 
**contacts** | [**Array&lt;Contact&gt;**](Contact.md) | Contact details for contacts linked to this task | [optional] 
**deals_ids** | **Array&lt;String&gt;** | Deal ids for deals a task is linked to | [optional] 
**companies_ids** | **Array&lt;String&gt;** | Companies ids for companies a task is linked to | [optional] 
**assign_to_id** | **String** | User id to whom task is assigned | [optional] 
**date** | **DateTime** | Task date/time | 
**duration** | **Integer** | Duration of task | [optional] 
**notes** | **String** | Notes added to a task | [optional] 
**done** | **BOOLEAN** | Task marked as done | [optional] 
**reminder** | [**TaskReminder**](TaskReminder.md) | Task reminder date/time for a task | [optional] 
**created_at** | **DateTime** | Task created date/time | [optional] 
**updated_at** | **DateTime** | Task update date/time | [optional] 
**refs** | **Object** |  | [optional] 


