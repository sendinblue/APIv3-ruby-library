# SibApiV3Sdk::UploadImageToGallery

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image_url** | **String** | The absolute url of the image (no local file). Maximum allowed size for image is 2MB. Allowed extensions for images are - jpeg, jpg, png, bmp, gif. |  |
| **name** | **String** | Name of the image. | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::UploadImageToGallery.new(
  image_url: https://somedomain.com/image1.jpg,
  name: nature.jpg
)
```

