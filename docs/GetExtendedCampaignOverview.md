# SibApiV3Sdk::GetExtendedCampaignOverview

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID of the campaign | 
**name** | **String** | Name of the campaign | 
**subject** | **String** | Subject of the campaign. Only available if &#x60;abTesting&#x60; flag of the campaign is &#x60;false&#x60; | [optional] 
**type** | **String** | Type of campaign | 
**status** | **String** | Status of the campaign | 
**scheduled_at** | **String** | UTC date-time on which campaign is scheduled (YYYY-MM-DDTHH:mm:ss.SSSZ) | [optional] 
**ab_testing** | **BOOLEAN** | Status of A/B Test for the campaign. abTesting &#x3D; false means it is disabled, &amp; abTesting &#x3D; true means it is enabled. | [optional] 
**subject_a** | **String** | Subject A of the ab-test campaign. Only available if &#x60;abTesting&#x60; flag of the campaign is &#x60;true&#x60; | [optional] 
**subject_b** | **String** | Subject B of the ab-test campaign. Only available if &#x60;abTesting&#x60; flag of the campaign is &#x60;true&#x60; | [optional] 
**split_rule** | **Integer** | The size of your ab-test groups. Only available if &#x60;abTesting&#x60; flag of the campaign is &#x60;true&#x60; | [optional] 
**winner_criteria** | **String** | Criteria for the winning version. Only available if &#x60;abTesting&#x60; flag of the campaign is &#x60;true&#x60; | [optional] 
**winner_delay** | **Integer** | The duration of the test in hours at the end of which the winning version will be sent. Only available if &#x60;abTesting&#x60; flag of the campaign is &#x60;true&#x60; | [optional] 
**send_at_best_time** | **BOOLEAN** | It is true if you have chosen to send your campaign at best time, otherwise it is false | [optional] 
**test_sent** | **BOOLEAN** | Retrieved the status of test email sending. (true&#x3D;Test email has been sent  false&#x3D;Test email has not been sent) | 
**header** | **String** | Header of the campaign | 
**footer** | **String** | Footer of the campaign | 
**sender** | [**GetExtendedCampaignOverviewSender**](GetExtendedCampaignOverviewSender.md) |  | 
**reply_to** | **String** | Email defined as the \&quot;Reply to\&quot; of the campaign | 
**to_field** | **String** | Customisation of the \&quot;to\&quot; field of the campaign | [optional] 
**html_content** | **String** | HTML content of the campaign | 
**share_link** | **String** | Link to share the campaign on social medias | [optional] 
**tag** | **String** | Tag of the campaign | [optional] 
**created_at** | **String** | Creation UTC date-time of the campaign (YYYY-MM-DDTHH:mm:ss.SSSZ) | 
**modified_at** | **String** | UTC date-time of last modification of the campaign (YYYY-MM-DDTHH:mm:ss.SSSZ) | 
**inline_image_activation** | **BOOLEAN** | Status of inline image. inlineImageActivation &#x3D; false means image can’t be embedded, &amp; inlineImageActivation &#x3D; true means image can be embedded, in the email. | [optional] 
**mirror_active** | **BOOLEAN** | Status of mirror links in campaign. mirrorActive &#x3D; false means mirror links are deactivated, &amp; mirrorActive &#x3D; true means mirror links are activated, in the campaign | [optional] 
**recurring** | **BOOLEAN** | FOR TRIGGER ONLY ! Type of trigger campaign.recurring &#x3D; false means contact can receive the same Trigger campaign only once, &amp; recurring &#x3D; true means contact can receive the same Trigger campaign several times | [optional] 
**sent_date** | **String** | Sent UTC date-time of the campaign (YYYY-MM-DDTHH:mm:ss.SSSZ). Only available if &#39;status&#39; of the campaign is &#39;sent&#39; | [optional] 
**return_bounce** | **Integer** | Total number of non-delivered campaigns for a particular campaign id. | [optional] 


