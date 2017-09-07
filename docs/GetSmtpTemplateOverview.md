# SendinblueApiv3::GetSmtpTemplateOverview

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID of the template | 
**name** | **String** | Name of the template | 
**subject** | **String** | Subject of the template | 
**is_active** | **BOOLEAN** | Status of template (true&#x3D;active, false&#x3D;inactive) | 
**test_sent** | **BOOLEAN** | Status of test sending for the template (true&#x3D;test email has been sent, false&#x3D;test email has not been sent) | 
**sender** | [**GetSmtpTemplateOverviewSender**](GetSmtpTemplateOverviewSender.md) |  | [optional] 
**reply_to** | **String** | Email defined as the \&quot;Reply to\&quot; for the template | 
**to_field** | **String** | Customisation of the \&quot;to\&quot; field for the template | 
**tag** | **String** | Tag of the template | 
**html_content** | **String** | HTML content of the template | 
**created_at** | **String** | Creation date of the template | 
**modified_at** | **String** | Last modification date of the template | 


