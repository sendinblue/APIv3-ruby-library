# SibApiV3Sdk::DeleteHardbounces

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **String** | Starting date (YYYY-MM-DD) of the time period for deletion. The hardbounces occurred after this date will be deleted. Must be less than or equal to the endDate | [optional] |
| **end_date** | **String** | Ending date (YYYY-MM-DD) of the time period for deletion. The hardbounces until this date will be deleted. Must be greater than or equal to the startDate | [optional] |
| **contact_email** | **String** | Target a specific email address | [optional] |

## Example

```ruby
require 'sib-api-v3-sdk'

instance = SibApiV3Sdk::DeleteHardbounces.new(
  start_date: 2016-12-31,
  end_date: 2017-01-31,
  contact_email: alex76@example.com
)
```

