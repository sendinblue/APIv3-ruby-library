# SibApiV3Sdk::GetExtendedList

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID of the list | 
**name** | **String** | Name of the list | 
**total_blacklisted** | **Integer** | Number of blacklisted contacts in the list | 
**total_subscribers** | **Integer** | Number of contacts in the list | 
**unique_subscribers** | **Integer** | Number of unique contacts in the list | 
**folder_id** | **Integer** | ID of the folder | 
**created_at** | **String** | Creation UTC date-time of the list (YYYY-MM-DDTHH:mm:ss.SSSZ) | 
**campaign_stats** | [**Array&lt;GetExtendedListCampaignStats&gt;**](GetExtendedListCampaignStats.md) |  | [optional] 
**dynamic_list** | **BOOLEAN** | Status telling if the list is dynamic or not (true&#x3D;dynamic, false&#x3D;not dynamic) | [optional] 


