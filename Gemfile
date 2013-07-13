source 'https://rubygems.org'
ruby "1.9.3"

gem 'rails', '>= 4.0.0'
gem 'rake', '10.1.0'

# Rails 4
gem 'sprockets-rails', :require => 'sprockets/railtie'

# heroku
gem 'rails_on_heroku'
gem 'rails_12factor', group: :production

# SEO
gem 'meta-tags', :require => 'meta_tags'
gem 'sitemap_generator'

# analyptics
gem 'mixpanel'
gem 'google-analytics-rails'

# Email validation
gem 'validates_email_format_of'
gem "recaptcha", :require => "recaptcha/rails"

# 3.2 to 4 upgrade fixers
gem 'protected_attributes'
gem 'rails-observers'
gem 'actionpack-page_caching'
gem 'actionpack-action_caching'
gem 'activerecord-deprecated_finders'


# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2'
# gem 'nokogiri'
gem 'pg'

gem "paperclip", "~> 3.0"

gem 'simple_form', :git => 'git://github.com/plataformatec/simple_form.git'

gem 'therubyracer'
gem 'less-rails' #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem 'twitter-bootstrap-rails', github: 'seyhunak/twitter-bootstrap-rails', branch: 'master'
#gem 'font-awesome-rails'
gem 'less-rails-fontawesome'

# Cloudinary CDN to manage images
# and carrierwave for uploading/downloading and dbase integration active records
gem 'cloudinary'
gem 'carrierwave'
gem 'attachinary', git: 'git://github.com/rochers/attachinary.git', branch: 'rails4'

group :development do
  # Capistrano stuff
#  gem 'capistrano'
#  gem 'capistrano-unicorn', :git => 'https://github.com/sosedoff/capistrano-unicorn.git', :branch => 'master', :require => false
end


# Gems used only for assets and not required
# in production environments by default.
#group :assets do
  gem 'sass-rails'   ,   '~> 4.0.0.rc1'
  gem 'coffee-rails'   , '~> 4.0.0'

  # for twitter-bootstrap-rails
  gem 'therubyracer'
  gem 'less-rails' #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS

  gem 'less'

  gem 'less-rails-fontawesome'


  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier',  '>= 1.3.0'
#end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

group :production do
# Use unicorn as the app server
# gem 'unicorn'

end

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

# Need to be dev only gems
# Better error screens
gem "better_errors"

# annotate models with db schema in header - basic use cd /path/to/app then annotate
gem "annotate"

# To use debugger
gem 'debugger'

gem "cucumber"

gem "mail"
gem "actionmailer"

# for mailgun
gem 'rest-client'
gem 'multimap'

# gem 'esendex'
