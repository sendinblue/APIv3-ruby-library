# SibApiV3Sdk::GetTransacEmailsListTransactionalEmails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address to which transactional email has been sent |  |
| **subject** | **String** | Subject of the sent email |  |
| **template_id** | **Integer** | Id of the template | [optional] |
| **message_id** | **String** | Message Id of the sent email |  |
| **uuid** | **String** | Unique id of the email sent to a particular contact |  |
| **date** | **String** | Date on which transactional email was sent |  |
| **from** | **String** | Email address of the sender from which the email was sent | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags used for your email | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetTransacEmailsListTransactionalEmails.new(
  email: john.smith@example.com,
  subject: Summer Camp,
  template_id: 2,
  message_id: &lt;201798300811.5700093@relay.domain.com&gt;,
  uuid: 5a78c-209ok98262910-s99a341,
  date: 2017-03-12T12:30:00Z,
  from: diana.doe@example.com,
  tags: null
)
```

