# SibApiV3Sdk::SendEmailAttachment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content** | **String** | Base64 encoded chunk data of the attachment generated on the fly |  |
| **name** | **String** | Required for content. Name of the attachment |  |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::SendEmailAttachment.new(
  content: b3JkZXIucGRm,
  name: myAttachment.png
)
```

