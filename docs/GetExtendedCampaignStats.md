# SibApiV3Sdk::GetExtendedCampaignStats

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**global_stats** | [**GetExtendedCampaignStatsGlobalStats**](GetExtendedCampaignStatsGlobalStats.md) |  | 
**campaign_stats** | **Array&lt;Object&gt;** | List-wise statistics of the campaign. | 
**mirror_click** | **Integer** | Number of clicks on mirror link | 
**remaining** | **Integer** | Number of remaning emails to send | 
**links_stats** | **Object** | Statistics about the number of clicks for the links | 
**stats_by_domain** | [**GetStatsByDomain**](GetStatsByDomain.md) |  | 
**stats_by_device** | [**GetStatsByDevice**](GetStatsByDevice.md) | Statistics about the campaign on the basis of various devices | 
**stats_by_browser** | [**GetStatsByBrowser**](GetStatsByBrowser.md) | Statistics about the campaign on the basis of various browsers | 


