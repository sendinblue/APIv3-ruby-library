# SibApiV3Sdk::SendSmtpEmailMessageVersions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**to** | [**Array&lt;SendSmtpEmailTo1&gt;**](SendSmtpEmailTo1.md) | List of email addresses and names (_optional_) of the recipients. For example, [{\&quot;name\&quot;:\&quot;Jimmy\&quot;, \&quot;email\&quot;:\&quot;jimmy98@example.com\&quot;}, {\&quot;name\&quot;:\&quot;Joe\&quot;, \&quot;email\&quot;:\&quot;joe@example.com\&quot;}] | 
**params** | **Hash&lt;String, Object&gt;** | Pass the set of attributes to customize the template. For example, {\&quot;FNAME\&quot;:\&quot;Joe\&quot;, \&quot;LNAME\&quot;:\&quot;Doe\&quot;}. It&#39;s considered only if template is in New Template Language format. | [optional] 
**bcc** | [**Array&lt;SendSmtpEmailBcc&gt;**](SendSmtpEmailBcc.md) | List of email addresses and names (optional) of the recipients in bcc | [optional] 
**cc** | [**Array&lt;SendSmtpEmailCc&gt;**](SendSmtpEmailCc.md) | List of email addresses and names (optional) of the recipients in cc | [optional] 
**reply_to** | [**SendSmtpEmailReplyTo1**](SendSmtpEmailReplyTo1.md) |  | [optional] 
**subject** | **String** | Custom subject specific to message version  | [optional] 


