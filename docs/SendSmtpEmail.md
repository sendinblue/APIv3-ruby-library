# SibApiV3Sdk::SendSmtpEmail

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender** | [**SendSmtpEmailSender**](SendSmtpEmailSender.md) |  | [optional] 
**to** | [**Array&lt;SendSmtpEmailTo&gt;**](SendSmtpEmailTo.md) | Email addresses and names of the recipients | 
**bcc** | [**Array&lt;SendSmtpEmailBcc&gt;**](SendSmtpEmailBcc.md) | Email addresses and names of the recipients in bcc | [optional] 
**cc** | [**Array&lt;SendSmtpEmailCc&gt;**](SendSmtpEmailCc.md) | Email addresses and names of the recipients in cc | [optional] 
**html_content** | **String** | HTML body of the message | 
**text_content** | **String** | Plain Text body of the message | [optional] 
**subject** | **String** | Subject of the message | 
**reply_to** | [**SendSmtpEmailReplyTo**](SendSmtpEmailReplyTo.md) |  | [optional] 
**attachment** | [**Array&lt;SendSmtpEmailAttachment&gt;**](SendSmtpEmailAttachment.md) | Pass the absolute URL (no local file) or the base64 content of the attachment. Name can be used in both cases to define the attachment name. It is mandatory in case of content. Extension allowed: gif, png, bmp, cgm, jpg, jpeg, tif, tiff, rtf, txt, css, shtml, html, htm, csv, zip, pdf, xml, ods, doc, docx, docm, ics, xls, xlsx, ppt, tar, and ez | [optional] 
**headers** | **Hash&lt;String, String&gt;** |  | [optional] 


