# SibApiV3Sdk::AbTestCampaignResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**winning_version** | **String** | Winning Campaign Info. pending &#x3D; Campaign has been picked for sending and winning version is yet to be decided, tie &#x3D; A tie happened between both the versions, notAvailable &#x3D; Campaign has not yet been picked for sending. | [optional] 
**winning_criteria** | **String** | Criteria choosen for winning version (Open/Click) | [optional] 
**winning_subject_line** | **String** | Subject Line of current winning version | [optional] 
**open_rate** | **String** | Open rate for current winning version | [optional] 
**click_rate** | **String** | Click rate for current winning version | [optional] 
**winning_version_rate** | **String** | Open/Click rate for the winner version | [optional] 
**statistics** | [**AbTestCampaignResultStatistics**](AbTestCampaignResultStatistics.md) |  | [optional] 
**clicked_links** | [**AbTestCampaignResultClickedLinks**](AbTestCampaignResultClickedLinks.md) |  | [optional] 


