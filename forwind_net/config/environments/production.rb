# Settings specified here will take precedence over those in config/environment.rb
ForwindNet::Application.configure do
	config.active_support.deprecation = :log
	# The production environment is meant for finished, "live" apps.
	# Code is not reloaded between requests
	config.cache_classes = false #true !!!
end