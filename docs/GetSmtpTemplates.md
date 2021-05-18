# SibApiV3Sdk::GetSmtpTemplates

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | Count of transactional email templates | [optional] |
| **templates** | [**Array&lt;GetSmtpTemplateOverview&gt;**](GetSmtpTemplateOverview.md) |  | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetSmtpTemplates.new(
  count: 1,
  templates: null
)
```

