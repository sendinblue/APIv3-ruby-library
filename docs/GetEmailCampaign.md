# SibApiV3Sdk::GetEmailCampaign

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID of the campaign | 
**name** | **String** | Name of the campaign | 
**subject** | **String** | Subject of the campaign | 
**type** | **String** | Type of campaign | 
**status** | **String** | Status of the campaign | 
**scheduled_at** | **String** | Date on which campaign is scheduled (YYYY-MM-DD HH:mm:ss) | [optional] 
**test_sent** | **BOOLEAN** | Retrieved the status of test email sending. (true&#x3D;Test email has been sent  false&#x3D;Test email has not been sent) | 
**header** | **String** | Header of the campaign | 
**footer** | **String** | Footer of the campaign | 
**sender** | [**GetExtendedCampaignOverviewSender**](GetExtendedCampaignOverviewSender.md) |  | [optional] 
**reply_to** | **String** | Email defined as the \&quot;Reply to\&quot; of the campaign | 
**to_field** | **String** | Customisation of the \&quot;to\&quot; field of the campaign | 
**html_content** | **String** | HTML content of the campaign | 
**share_link** | **String** | Link to share the campaign on social medias | [optional] 
**tag** | **String** | Tag of the campaign | 
**created_at** | **String** | Creation date of the campaign (YYYY-MM-DD HH:mm:ss) | 
**modified_at** | **String** | Date of last modification of the campaign (YYYY-MM-DD HH:mm:ss) | 
**inline_image_activation** | **BOOLEAN** | Status of inline image. inlineImageActivation &#x3D; false means image can’t be embedded, &amp; inlineImageActivation &#x3D; true means image can be embedded, in the email. | [optional] 
**mirror_active** | **BOOLEAN** | Status of mirror links in campaign. mirrorActive &#x3D; false means mirror links are deactivated, &amp; mirrorActive &#x3D; true means mirror links are activated, in the campaign | [optional] 
**recurring** | **BOOLEAN** | FOR TRIGGER ONLY ! Type of trigger campaign.recurring &#x3D; false means contact can receive the same Trigger campaign only once, &amp; recurring &#x3D; true means contact can receive the same Trigger campaign several times | [optional] 


