Envelope::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Send mail in development
  config.action_mailer.raise_delivery_errors = false
  config.action_mailer.default_url_options = { :host => 'localhost:3000' }

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Do not compress assets
  config.assets.compress = false

  # Expands the lines which load the assets
  config.assets.debug = false
  config.assets.logger = nil

  # Send development emails to browser
  config.action_mailer.delivery_method = :sendmail

  # In order to properly set up single collection inheritance, Mongoid needs to
  # preload all models before every request in development mode. This can get slow,
  #so if you are not using any inheritance it is recommended you turn this feature off.
  config.mongoid.preload_models = false
end

# for foreman
$stdout.sync = true
