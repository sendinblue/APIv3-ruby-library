# SibApiV3Sdk::GetTransacEmailsList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | Total number of transactional emails available on your account according to the passed filter | [optional] |
| **transactional_emails** | [**Array&lt;GetTransacEmailsListTransactionalEmails&gt;**](GetTransacEmailsListTransactionalEmails.md) |  | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetTransacEmailsList.new(
  count: 5,
  transactional_emails: null
)
```

