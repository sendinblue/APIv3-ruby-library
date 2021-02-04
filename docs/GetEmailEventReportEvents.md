# SibApiV3Sdk::GetEmailEventReportEvents

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | Email address which generates the event | 
**date** | **String** | UTC date-time on which the event has been generated | 
**subject** | **String** | Subject of the event | [optional] 
**message_id** | **String** | Message ID which generated the event | 
**event** | **String** | Event which occurred | 
**reason** | **String** | Reason of bounce (only available if the event is hardbounce or softbounce) | [optional] 
**tag** | **String** | Tag of the email which generated the event | [optional] 
**ip** | **String** | IP from which the user has opened the email or clicked on the link (only available if the event is opened or clicks) | [optional] 
**link** | **String** | The link which is sent to the user (only available if the event is requests or opened or clicks) | [optional] 
**from** | **String** | Sender email from which the emails are sent | [optional] 
**template_id** | **Integer** | ID of the template (only available if the email is template based) | [optional] 


