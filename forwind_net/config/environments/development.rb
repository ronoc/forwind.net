# Settings specified here will take precedence over those in config/environment.rb
ForwindNet::Application.configure do
	config.active_support.deprecation = :log
    config.cache_classes = false
	# Log error messages when you accidentally call methods on nil.
	config.whiny_nils = true

	# Enable the breakpoint server that script/breakpointer connects to
	config.breakpoint_server = true

	# Show full error reports and disable caching
	#config.action_controller.consider_all_requests_local = true
	#config.action_controller.perform_caching             = false
	# Don't care if the mailer can't send
	#config.action_mailer.raise_delivery_errors = false
end

#require 'rubygems'
#require 'ruby-debug'
