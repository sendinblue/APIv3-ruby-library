# SibApiV3Sdk::Body12

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agent_id** | **String** | agent ID. It can be found on agent’s page or received from a webhook. Alternatively, you can use &#x60;agentEmail&#x60; + &#x60;agentName&#x60; + &#x60;receivedFrom&#x60; instead (all 3 fields required). | [optional] 
**received_from** | **String** | mark your messages to distinguish messages created by you from the others. | [optional] 
**agent_email** | **String** | agent email. When sending online pings from a standalone system, it’s hard to maintain a 1-to-1 relationship between the users of both systems. In this case, an agent can be specified by their email address. If there’s no agent with the specified email address in your Sendinblue organization, a dummy agent will be created automatically. | [optional] 
**agent_name** | **String** | agent name. | [optional] 


