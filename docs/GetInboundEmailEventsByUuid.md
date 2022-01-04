# SibApiV3Sdk::GetInboundEmailEventsByUuid

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**received_at** | **DateTime** | Date when email was received on SMTP relay | [optional] 
**delivered_at** | **DateTime** | Date when email was delivered successfully to client’s webhook | [optional] 
**recipient** | **String** | Recipient’s email address | [optional] 
**sender** | **String** | Sender’s email address | [optional] 
**message_id** | **String** | Value of the Message-ID header. This will be present only after the processing is done. | [optional] 
**subject** | **String** | Value of the Subject header. This will be present only after the processing is done.  | [optional] 
**attachments** | [**Array&lt;GetInboundEmailEventsByUuidAttachments&gt;**](GetInboundEmailEventsByUuidAttachments.md) | List of attachments of the email. This will be present only after the processing is done. | [optional] 
**logs** | [**Array&lt;GetInboundEmailEventsByUuidLogs&gt;**](GetInboundEmailEventsByUuidLogs.md) | List of events/logs that describe the lifecycle of the email on SIB platform | [optional] 


