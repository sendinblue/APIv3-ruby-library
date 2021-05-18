# load the gem
require 'sib-api-v3-sdk'
# setup authorization
SibApiV3Sdk.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = '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'
end
api_instance = SibApiV3Sdk::EmailCampaignsApi.new
campaign_id = 240 # Integer | Id of the campaign
begin
  #Get an email campaign report
  result = api_instance.get_email_campaign(campaign_id)
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling EmailCampaignsApi->get_email_campaign: #{e}"
end