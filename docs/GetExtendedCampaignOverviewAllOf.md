# SibApiV3Sdk::GetExtendedCampaignOverviewAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **test_sent** | **Boolean** | Retrieved the status of test email sending. (true&#x3D;Test email has been sent  false&#x3D;Test email has not been sent) |  |
| **header** | **String** | Header of the campaign |  |
| **footer** | **String** | Footer of the campaign |  |
| **sender** | [**GetExtendedCampaignOverviewAllOfSender**](GetExtendedCampaignOverviewAllOfSender.md) |  |  |
| **reply_to** | **String** | Email defined as the \&quot;Reply to\&quot; of the campaign |  |
| **to_field** | **String** | Customisation of the \&quot;to\&quot; field of the campaign | [optional] |
| **html_content** | **String** | HTML content of the campaign |  |
| **share_link** | **String** | Link to share the campaign on social medias | [optional] |
| **tag** | **String** | Tag of the campaign | [optional] |
| **created_at** | **String** | Creation UTC date-time of the campaign (YYYY-MM-DDTHH:mm:ss.SSSZ) |  |
| **modified_at** | **String** | UTC date-time of last modification of the campaign (YYYY-MM-DDTHH:mm:ss.SSSZ) |  |
| **inline_image_activation** | **Boolean** | Status of inline image. inlineImageActivation &#x3D; false means image can’t be embedded, &amp; inlineImageActivation &#x3D; true means image can be embedded, in the email. | [optional] |
| **mirror_active** | **Boolean** | Status of mirror links in campaign. mirrorActive &#x3D; false means mirror links are deactivated, &amp; mirrorActive &#x3D; true means mirror links are activated, in the campaign | [optional] |
| **recurring** | **Boolean** | FOR TRIGGER ONLY ! Type of trigger campaign.recurring &#x3D; false means contact can receive the same Trigger campaign only once, &amp; recurring &#x3D; true means contact can receive the same Trigger campaign several times | [optional] |
| **sent_date** | **String** | Sent UTC date-time of the campaign (YYYY-MM-DDTHH:mm:ss.SSSZ). Only available if &#39;status&#39; of the campaign is &#39;sent&#39; | [optional] |
| **return_bounce** | **Integer** | Total number of non-delivered campaigns for a particular campaign id. | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::GetExtendedCampaignOverviewAllOf.new(
  test_sent: true,
  header: [DEFAULT_HEADER],
  footer: [DEFAULT_FOOTER],
  sender: null,
  reply_to: replyto@domain.com,
  to_field: {FNAME} {LNAME},
  html_content: This is my HTML Content,
  share_link: http://dhh.sendinblue.com/fhsgccc.html?t&#x3D;9865448900,
  tag: Newsletter,
  created_at: 2017-05-01T12:30:00Z,
  modified_at: 2017-05-01T12:30:00Z,
  inline_image_activation: true,
  mirror_active: true,
  recurring: true,
  sent_date: 2018-12-01T16:30:00Z,
  return_bounce: 5
)
```

