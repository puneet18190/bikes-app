Backend::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  #config.whiny_nils = true  obsolete rails in rails 4

  # rails 4
  config.eager_load = false

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  config.action_mailer.delivery_method = :smtp

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = true

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Raise exception on mass assignment protection for Active Record models
  config.active_record.mass_assignment_sanitizer = :strict

  # Log the query plan for queries taking more than this (works
  # with SQLite, MySQL, and PostgreSQL)
  #config.active_record.auto_explain_threshold_in_seconds = 0.5 # rails 4 obsolete

  # Do not compress assets
  config.assets.compress = true

  # Expands the lines which load the assets
  config.assets.debug = true


  #i added this
#  config.assets.compile = true
# config.serve_static_assets = true

  Paperclip.options[:command_path] = "/usr/bin/"

#  config.action_mailer.default_url_options = { :host => 'localhost:3000' }
#  config.action_mailer.delivery_method = :sendmail
# change to true to allow email to be sent during development
#  config.action_mailer.perform_deliveries = true
#  config.action_mailer.raise_delivery_errors = true
#  config.action_mailer.default :charset => "utf-8"

#  config.action_mailer.delivery_method = :smtp
#  config.action_mailer.smtp_settings = {
#      :address => '192.168.3.13',
#      :domain  => 'www.bov.nu',
#      :port      => 465,
#      :user_name => 'steve@bov.nu',
#      :password => 'sb1234-A',
#      :authentication => :plain,
#  :enable_starttls_auto => true ,
#  :tls => true
#   }

#  ActionMailer::Base.sendmail_settings = {
#      :location       => '/usr/sbin/sendmail',
#      :arguments      => '-i -t'
#  }

  ActionMailer::Base.default :content_type => "text/html"


  config.action_mailer.delivery_method = :smtp
 # config.action_mailer.default_charset = "utf-8"
  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.smtp_settings = {
      :authentication => :plain,
      :address => "smtp.mailgun.org",
      :port => 587,
      :domain => "2wheels4cash.mailgun.org",
      :user_name => "postmaster@2wheels4cash.mailgun.org",
      :password => "9e32p1ny8bx3"
  }
 # replace this with your production tracker code
  GA.tracker = "UA-42269146-1"

  # rails 4 guide
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  config.eager_load = false

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Expands the lines which load the assets
  config.assets.debug = true
end
