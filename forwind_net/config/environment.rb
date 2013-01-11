# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
ForwindNet::Application.initialize!

ForwindNet::Application.configure do
  config.log_level = :warning
  config.time_zone = 'UTC'
  config.action_controller.session = { :session_key => "_myapp_session", :secret => "forwinds_secret_phrase_which_is_30_characters" }
end

VALID_PASSWORD = "pw"

#I suspect spotify will become stream locations time.
RELEASE_LINK_TYPES = {:PHYSICAL => 0, :DOWNLOAD => 1, :STREAM => 2, :REVIEW => 3}


