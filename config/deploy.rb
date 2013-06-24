require 'bundler/capistrano'

set :rails_env, "production"

set :application, "Backend"
#set :repository,  "localhost"

#set :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`


set :user, 'deployer'
set :password, "sb1234"
set :scm_passphrase, "sb1234"
ssh_options[:port] = 22
set :use_sudo, false
default_run_options[:pty] = true

role :web, "192.168.3.11"                          # Your HTTP server, Apache/etc
role :app, "192.168.3.11"                          # This may be the same as your `Web` server
role :db,  "192.168.3.12", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"





#set :default_environment, {
#    'PATH' => '/home/deployer/bin:/home/deployer/ruby/gems/bin:/usr/local/bin:/bin:/usr/bin',
#    'RUBYOPT' => '-I/home/deployer/rubygems/inst/lib',
#    'GEM_PATH' => '/home/deployer/ruby/gems:/usr/lib/ruby/gems/1.9',
#    'GEM_HOME' => '/home/deployer/ruby/gems'
#}

# Source repository taken for deployments
# set :local_repository,  'ssh://myuser@mysite.com:1234/home/myuser/myapp.git'
set :repository, 'ssh://deployer@192.168.3.11/home/deployer/gitrepository/myrepo.git'
set :deploy_to, '/home/deployer/backend'
set :scm, 'git' # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
               # Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
set :scm_verbose, true
set :bundle_flags, ''
set :deploy_via, :copy
set :keep_releases, 5

set :default_environment, {
    'PATH' => "#{deploy_to}/bin:$PATH",
    'GEM_HOME' => "#{deploy_to}/gems"
}

namespace :gems do
  task :bundle, :roles => :app do
    run "cd #{release_path} && bundle install  --deployment --without development test"
  end
end

after "deploy:update_code", "gems:bundle"


# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end

# Unicorn tasks
require 'capistrano-unicorn'
after 'deploy:restart', 'unicorn:reload' # app IS NOT preloaded
