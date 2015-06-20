set :application, "brochure"
set :repository,  "git@github.com:enspiral/career.git"
set :use_sudo,    false

set :normalize_asset_timestamps, false
default_run_options[:shell] = '/bin/bash --login'
set :scm, :git

task :production do
  set :user,      "brochure"
  set :domain,    "propertynz-brochure.enspiral.info"
  set :branch,    "master"
  set :rails_env, "production"
  set :deploy_to, "/home/#{user}/"
  set :bundle_without, [:development, :test]

  ## WARNING: If your ssh key is sensitive, you may wish to avoid using agent forwarding.                  ##
  ##          This setting helps deployment work out-of-the-box, but does have some security implications. ##
  set :ssh_options, {forward_agent: true}

  server "atlantic.pnz.enspiral.info", :web, :app
  # server "pacific.pnz.enspiral.info", :web, :app
  # server "indian.pnz.enspiral.info", :db, {primary: true}
end

namespace :assets do
  task :precompile, :roles => :web do
    run "cd #{release_path} && RAILS_ENV=#{rails_env} bundle exec rake assets:precompile"
  end

  task :cleanup, :roles => :web do
    run "cd #{release_path} && RAILS_ENV=#{rails_env} bundle exec rake assets:clean"
  end
end

namespace :site do
  task :symlink do
    run "ln -nfs #{shared_path}/database.yml #{release_path}/config/database.yml"
  end
end

namespace :deploy do
  desc 'Restart application'
  task :restart do
    run "cd #{release_path} && RAILS_ENV=#{rails_env} bundle exec rake chewy:reset:all"
    run "mkdir -p #{release_path}/tmp"
    run "touch #{release_path}/tmp/restart.txt"
    run "touch #{release_path}/tmp/restart-sidekiq.txt"
  end
end

load 'deploy/assets'
require "bundler/capistrano"

after "deploy:restart", "deploy:cleanup"
after "deploy:finalize_update", "site:symlink"


require './config/boot'
