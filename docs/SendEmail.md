# SibApiV3Sdk::SendEmail

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email_to** | **Array&lt;String&gt;** | Email addresses of the recipients | 
**email_bcc** | **Array&lt;String&gt;** | Email addresses of the recipients in bcc | [optional] 
**email_cc** | **Array&lt;String&gt;** | Email addresses of the recipients in cc | [optional] 
**reply_to** | **String** | Email on which campaign recipients will be able to reply to | [optional] 
**attachment_url** | **String** | Absolute url of the attachment (no local file). Extension allowed: gif, png, bmp, cgm, jpg, jpeg, tif, tiff, rtf, txt, css, shtml, html, htm, csv, zip, pdf, xml, ods, doc, docx, docm, ics, xls, xlsx, ppt, tar, and ez | [optional] 
**attachment** | [**Array&lt;SendEmailAttachment&gt;**](SendEmailAttachment.md) | Pass the base64 content of the attachment. Extension allowed: gif, png, bmp, cgm, jpg, jpeg, tif, tiff, rtf, txt, css, shtml, html, htm, csv, zip, pdf, xml, ods, doc, docx, docm, ics, xls, xlsx, ppt, tar, and ez | [optional] 
**headers** | **Hash&lt;String, String&gt;** |  | [optional] 
**attributes** | **Hash&lt;String, String&gt;** |  | [optional] 


