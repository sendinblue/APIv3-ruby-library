# SibApiV3Sdk::GetSmtpTemplateOverview

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID of the template | 
**name** | **String** | Name of the template | 
**subject** | **String** | Subject of the template | 
**is_active** | **BOOLEAN** | Status of template (true&#x3D;active, false&#x3D;inactive) | 
**test_sent** | **BOOLEAN** | Status of test sending for the template (true&#x3D;test email has been sent, false&#x3D;test email has not been sent) | 
**sender** | [**GetSmtpTemplateOverviewSender**](GetSmtpTemplateOverviewSender.md) |  | 
**reply_to** | **String** | Email defined as the \&quot;Reply to\&quot; for the template | 
**to_field** | **String** | Customisation of the \&quot;to\&quot; field for the template | 
**tag** | **String** | Tag of the template | 
**html_content** | **String** | HTML content of the template | 
**created_at** | **String** | Creation UTC date-time of the template (YYYY-MM-DDTHH:mm:ss.SSSZ) | 
**modified_at** | **String** | Last modification UTC date-time of the template (YYYY-MM-DDTHH:mm:ss.SSSZ) | 
**doi_template** | **BOOLEAN** | It is true if template is a valid Double opt-in (DOI) template, otherwise it is false. This field will be available only in case of single template detail call. | [optional] 


