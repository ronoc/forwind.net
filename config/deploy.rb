set :user, "forwind" # Your main account username
set :domain, "forwind.net" # Your secondary domain name. For ex: myname.com
set :txd_server, "forwind.textdriven.com" # The TextDrive server you're currently located on. For ex: nicola.textdrive.com
set :subversion_repo_name, "websites" # Your Subversion repo name. For ex: repos
set :application, "forwind" # The name of your application (ie. youtilize)

set :repository, "http://#{user}@#{txd_server}/svn/#{subversion_repo_name}/#{application}" # Edit this path if you're installing on primary domain or your SVN repo is located elsewhere
set :deploy_to, "/users/home/#{user}/domains/#{domain}/web" # This is where files will be uploaded to
set :db_name, "#{application}_production"

role :app, "#{user}@#{txd_server}" 
role :web, "#{user}@#{txd_server}" 

role :db, "#{user}@#{txd_server}" 

ssh_options[:paranoid] = false

namespace :deploy do
  desc "Restart Lighttpd and Ruby" 
  task :restart, :roles => :app do
    run "pkill lighttpd; pkill ruby" # Kill processes 
    run "nohup /users/home/#{user}/etc/rc.d/lighttpd.sh start; nohup /users/home/#{user}/etc/rc.d/rails.sh" # Start processes
  end
end

