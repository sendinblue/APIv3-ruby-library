# SibApiV3Sdk::CreateEmailCampaign

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tag** | **String** | Tag of the campaign | [optional] 
**sender** | [**CreateEmailCampaignSender**](CreateEmailCampaignSender.md) |  | 
**name** | **String** | Name of the campaign | 
**html_content** | **String** | Mandatory if htmlUrl is empty. Body of the message (HTML) | [optional] 
**html_url** | **String** | Mandatory if htmlContent is empty. Url to the message (HTML) | [optional] 
**scheduled_at** | **DateTime** | Sending UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). Prefer to pass your timezone in date-time format for accurate result. | [optional] 
**subject** | **String** | Subject of the campaign | 
**reply_to** | **String** | Email on which the campaign recipients will be able to reply to | [optional] 
**to_field** | **String** | To personalize the «To» Field, e.g. if you want to include the first name and last name of your recipient, use {FNAME} {LNAME}. These attributes must already exist in your contact database | [optional] 
**recipients** | [**CreateEmailCampaignRecipients**](CreateEmailCampaignRecipients.md) |  | [optional] 
**attachment_url** | **String** | Absolute url of the attachment (no local file). Extension allowed: xlsx, xls, ods, docx, docm, doc, csv, pdf, txt, gif, jpg, jpeg, png, tif, tiff, rtf, bmp, cgm, css, shtml, html, htm, zip, xml, ppt, pptx, tar, ez, ics, mobi, msg, pub and eps | [optional] 
**inline_image_activation** | **BOOLEAN** | Use true to embedded the images in your email. Final size of the email should be less than 4MB. Campaigns with embedded images can not be sent to more than 5000 contacts | [optional] [default to false]
**mirror_active** | **BOOLEAN** | Use true to enable the mirror link | [optional] 
**recurring** | **BOOLEAN** | For trigger campagins use false to make sure a contact receives the same campaign only once | [optional] [default to false]
**type** | **String** | Type of the campaign | 
**footer** | **String** | Footer of the email campaign | [optional] 
**header** | **String** | Header of the email campaign | [optional] 
**utm_campaign** | **String** | Customize the utm_campaign value. If this field is empty, the campaign name will be used. Only alphanumeric characters and spaces are allowed | [optional] 


