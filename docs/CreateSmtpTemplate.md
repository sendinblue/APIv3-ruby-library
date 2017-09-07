# SendinblueApiv3::CreateSmtpTemplate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tag** | **String** | Tag of the template | [optional] 
**sender** | [**CreateSmtpTemplateSender**](CreateSmtpTemplateSender.md) |  | [optional] 
**template_name** | **String** | Name of the template | 
**html_content** | **String** | Body of the message (HTML version). The field must have more than 10 characters. REQUIRED if htmlUrl is empty | [optional] 
**html_url** | **String** | Url which contents the body of the email message. REQUIRED if htmlContent is empty | [optional] 
**subject** | **String** | Subject of the template | 
**reply_to** | **String** | Email on which campaign recipients will be able to reply to | [optional] 
**to_field** | **String** | This is to personalize the «To» Field. If you want to include the first name and last name of your recipient, add [FNAME] [LNAME]. To use the contact attributes here, these must already exist in SendinBlue account | [optional] 
**attachment_url** | **String** | Absolute url of the attachment (no local file). Extensions allowed xlsx, xls, ods, docx, docm, doc, csv, pdf, txt, gif, jpg, jpeg, png, tif, tiff and rtf | [optional] 
**is_active** | **BOOLEAN** | Status of template. isActive &#x3D; true means template is active and isActive &#x3D; false means template is inactive | [optional] 


