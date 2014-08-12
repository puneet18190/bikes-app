unless (app_name = 'dry-journey-5934').nil?
  require 'heroku-api'

  heroku  = Heroku::API.new(:api_key => 'a11a5048-b309-4a73-8b16-4e6fe8426e58')

  release = heroku.get_releases(app_name).body.last

  ENV["HEROKU_RELEASE_NAME"] = release["name"]
end