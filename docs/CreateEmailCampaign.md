# SibApiV3Sdk::CreateEmailCampaign

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tag** | **String** | Tag of the campaign | [optional] 
**sender** | [**CreateEmailCampaignSender**](CreateEmailCampaignSender.md) |  | 
**name** | **String** | Name of the campaign | 
**html_content** | **String** | Mandatory if htmlUrl and templateId are empty. Body of the message (HTML) | [optional] 
**html_url** | **String** | Mandatory if htmlContent and templateId are empty. Url to the message (HTML) | [optional] 
**template_id** | **Integer** | Mandatory if htmlContent and htmlUrl are empty. Id of the SMTP template with status &#39;active&#39;. Used to copy only its content fetched from htmlContent/htmlUrl to an email campaign for RSS feature. | [optional] 
**scheduled_at** | **DateTime** | Sending UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). Prefer to pass your timezone in date-time format for accurate result. | [optional] 
**subject** | **String** | Subject of the campaign | 
**reply_to** | **String** | Email on which the campaign recipients will be able to reply to | [optional] 
**to_field** | **String** | To personalize the «To» Field. If you want to include the first name and last name of your recipient, add {FNAME} {LNAME}. These contact attributes must already exist in your SendinBlue account. If input parameter &#39;params&#39; used please use {{contact.FNAME}} {{contact.LNAME}} for personalization | [optional] 
**recipients** | [**CreateEmailCampaignRecipients**](CreateEmailCampaignRecipients.md) |  | [optional] 
**attachment_url** | **String** | Absolute url of the attachment (no local file). Extension allowed: xlsx, xls, ods, docx, docm, doc, csv, pdf, txt, gif, jpg, jpeg, png, tif, tiff, rtf, bmp, cgm, css, shtml, html, htm, zip, xml, ppt, pptx, tar, ez, ics, mobi, msg, pub and eps | [optional] 
**inline_image_activation** | **BOOLEAN** | Use true to embedded the images in your email. Final size of the email should be less than 4MB. Campaigns with embedded images can not be sent to more than 5000 contacts | [optional] [default to false]
**mirror_active** | **BOOLEAN** | Use true to enable the mirror link | [optional] 
**recurring** | **BOOLEAN** | For trigger campagins use false to make sure a contact receives the same campaign only once | [optional] [default to false]
**type** | **String** | Type of the campaign | 
**footer** | **String** | Footer of the email campaign | [optional] 
**header** | **String** | Header of the email campaign | [optional] 
**utm_campaign** | **String** | Customize the utm_campaign value. If this field is empty, the campaign name will be used. Only alphanumeric characters and spaces are allowed | [optional] 
**params** | **Object** | Pass the set of attributes to customize the type classic campaign. For example, {&#39;FNAME&#39;:&#39;Joe&#39;, &#39;LNAME&#39;:&#39;Doe&#39;}. Only available if &#39;type&#39; is &#39;classic&#39;. It&#39;s considered only if campaign is in New Template Language format. The New Template Language is dependent on the values of &#39;subject&#39;, &#39;htmlContent/htmlUrl&#39;, &#39;sender.name&#39; &amp; &#39;toField&#39; | [optional] 


