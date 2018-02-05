# SibApiV3Sdk::SendEmail

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email_to** | **Array&lt;String&gt;** | Email addresses of the recipients | 
**email_bcc** | **Array&lt;String&gt;** | Email addresses of the recipients in bcc | [optional] 
**email_cc** | **Array&lt;String&gt;** | Email addresses of the recipients in cc | [optional] 
**reply_to** | **String** | Email on which campaign recipients will be able to reply to | [optional] 
**attachment_url** | **String** | Absolute url of the attachment (no local file). Extension allowed: xlsx, xls, ods, docx, docm, doc, csv, pdf, txt, gif, jpg, jpeg, png, tif, tiff, rtf, bmp, cgm, css, shtml, html, htm, zip, xml, ppt, pptx, tar, ez, ics, mobi, msg, pub and eps | [optional] 
**attachment** | [**Array&lt;SendEmailAttachment&gt;**](SendEmailAttachment.md) | Pass the base64 content of the attachment. Extension allowed: xlsx, xls, ods, docx, docm, doc, csv, pdf, txt, gif, jpg, jpeg, png, tif, tiff, rtf, bmp, cgm, css, shtml, html, htm, zip, xml, ppt, pptx, tar, ez, ics, mobi, msg, pub and eps | [optional] 
**headers** | **Hash&lt;String, String&gt;** |  | [optional] 
**attributes** | **Hash&lt;String, String&gt;** |  | [optional] 


