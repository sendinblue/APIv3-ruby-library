# SibApiV3Sdk::GetTransacEmailContent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address to which transactional email has been sent |  |
| **subject** | **String** | Subject of the sent email |  |
| **template_id** | **Integer** | Id of the template | [optional] |
| **date** | **String** | Date on which transactional email was sent |  |
| **events** | [**Array&lt;GetTransacEmailContentEvents&gt;**](GetTransacEmailContentEvents.md) | Series of events which occurred on the transactional email |  |
| **body** | **String** | Actual content of the transactional email that has been sent |  |
| **attachment_count** | **Integer** | Count of the attachments that were sent in the email |  |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetTransacEmailContent.new(
  email: abc@example.com,
  subject: Summer Camp,
  template_id: 2,
  date: 2017-03-12T12:30:00Z,
  events: null,
  body: &lt;!DOCTYPE html&gt; &lt;html&gt; &lt;body&gt; &lt;h1&gt;Greetings from the team&lt;/h1&gt; &lt;p&gt;This is the actual html content sent&lt;/p&gt; &lt;/body&gt; &lt;/html&gt;,
  attachment_count: 2
)
```

