# SibApiV3Sdk::SendSmtpEmail

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sender** | [**SendSmtpEmailSender**](SendSmtpEmailSender.md) |  | [optional] 
**to** | [**Array&lt;SendSmtpEmailTo&gt;**](SendSmtpEmailTo.md) | List of email addresses and names (optional) of the recipients. For example, [{&#39;name&#39;:&#39;Jimmy&#39;, &#39;email&#39;:&#39;jimmy98@example.com&#39;}, {&#39;name&#39;:&#39;Joe&#39;, &#39;email&#39;:&#39;joe@example.com&#39;}] | 
**bcc** | [**Array&lt;SendSmtpEmailBcc&gt;**](SendSmtpEmailBcc.md) | List of email addresses and names (optional) of the recipients in bcc | [optional] 
**cc** | [**Array&lt;SendSmtpEmailCc&gt;**](SendSmtpEmailCc.md) | List of email addresses and names (optional) of the recipients in cc | [optional] 
**html_content** | **String** | HTML body of the message ( Mandatory if &#39;templateId&#39; is not passed, ignored if &#39;templateId&#39; is passed ) | [optional] 
**text_content** | **String** | Plain Text body of the message ( Ignored if &#39;templateId&#39; is passed ) | [optional] 
**subject** | **String** | Subject of the message. Mandatory if &#39;templateId&#39; is not passed | [optional] 
**reply_to** | [**SendSmtpEmailReplyTo**](SendSmtpEmailReplyTo.md) |  | [optional] 
**attachment** | [**Array&lt;SendSmtpEmailAttachment&gt;**](SendSmtpEmailAttachment.md) | Pass the absolute URL (no local file) or the base64 content of the attachment along with the attachment name (Mandatory if attachment content is passed). For example, [{&#39;url&#39;:&#39;https://attachment.domain.com/myAttachmentFromUrl.jpg&#39;, &#39;name&#39;:&#39;My attachment 1&#39;}, {&#39;content&#39;:&#39;base64 exmaple content&#39;, &#39;name&#39;:&#39;My attachment 2&#39;}]. Allowed extensions for attachment file: xlsx, xls, ods, docx, docm, doc, csv, pdf, txt, gif, jpg, jpeg, png, tif, tiff, rtf, bmp, cgm, css, shtml, html, htm, zip, xml, ppt, pptx, tar, ez, ics, mobi, msg, pub and eps ( Ignored if &#39;templateId&#39; is passed ) | [optional] 
**headers** | **Object** | Pass the set of headers that shall be sent along the mail headers in the original email. &#39;X-Mailin-IP&#39; header can be set (only for dedicated ip users) to mention the IP to be used for sending transactional emails. For example, {&#39;Content-Type&#39;:&#39;text/html&#39;, &#39;charset&#39;:&#39;iso-8859-1&#39;, &#39;X-Mailin-IP&#39;:&#39;1.2.3.4&#39;} | [optional] 
**template_id** | **Integer** | Id of the template | [optional] 
**params** | **Object** | Pass the set of attributes to customize the template. For example, {&#39;FNAME&#39;:&#39;Joe&#39;, &#39;LNAME&#39;:&#39;Doe&#39;}. | [optional] 
**tags** | **Array&lt;String&gt;** | Tag your emails to find them more easily | [optional] 


