source 'https://rubygems.org'

gem 'rails', '3.2.12'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2'
gem 'sqlite3'
gem 'pg'

gem "paperclip", "~> 3.0"

gem 'simple_form'

gem "therubyracer"
gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem "twitter-bootstrap-rails"

# Cloudinary CDN to manage images
# and carrierwave for uploading/downloading and dbase integration active records
gem 'cloudinary'
gem 'carrierwave'
gem 'attachinary'

group :development do
  # Capistrano stuff
  gem 'capistrano'
  gem 'capistrano-unicorn', :git => 'https://github.com/sosedoff/capistrano-unicorn.git', :branch => 'master', :require => false
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # for twitter-bootstrap-rails
  gem "therubyracer"
  gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

group :production do
# Use unicorn as the app server
 gem 'unicorn'

end

# Deploy with Capistrano
gem 'capistrano'

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

gem 'esendex'
