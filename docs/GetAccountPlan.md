# SibApiV3Sdk::GetAccountPlan

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Displays the plan type of the user | 
**credits_type** | **String** | This is the type of the credit, \&quot;User Limit\&quot; or \&quot;Send Limit\&quot; are two possible types of credit of a user. \&quot;User Limit\&quot; implies the total number of subscribers you can add to your account, and \&quot;Send Limit\&quot; implies the total number of emails you can send to the subscribers in your account. | 
**credits** | **Float** | Remaining credits of the user. This can either be \&quot;User Limit\&quot; or \&quot;Send Limit\&quot; depending on the plan. | 
**start_date** | **Date** | Date of the period from which the plan will start (only available for \&quot;subscription\&quot;, \&quot;unlimited\&quot; and \&quot;reseller\&quot; plan type) | [optional] 
**end_date** | **Date** | Date of the period from which the plan will end (only available for \&quot;subscription\&quot;, \&quot;unlimited\&quot; and \&quot;reseller\&quot; plan type) | [optional] 


