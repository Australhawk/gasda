require 'localeapp/rails'

Localeapp.configure do |config|
  config.api_key = 'UrA0m4PbC7EwTgRPlq1SvsdA6WZXZMdpvgk3uw3p0cvYWyuIRN'
  config.polling_environments = [:development] # Doesn't include :staging or :production
  config.sending_environments = [:development]
end
