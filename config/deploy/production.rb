set :stage, :production

server '195.93.180.226', roles: %w{web app db assets},primary: true, user: 'coolagin', password: 'COOLagin'

set :pty, true
# require "bundler/capistrano"

set :application,     "redmine"

set :repository,      "git@github.com:Coolagin/redmine.git"
set :branch,          "master"

set :deploy_to, "/home/coolagin/projects/redmine"

set :scm, :git

set :user, "coolagin"
set :password, "COOLagin"
# set :password,        "COOLagin"

set :scm_username, "Coolagin"
set :scm_passphrase, "COOLagin"

set :use_sudo, false
set :default_shell, '/bin/bash -l'

set :linked_dirs, %w(public/uploads)

set :ssh_options, {
  forward_agent: true
  # verbose: :debug
}

set :keep_releases, 5



# after "deploy:symlink:linked_files", "set_uploads_path"

# task :set_uploads_path do
#   execute "ln -nfs #{shared_path}/uploads #{release_path}/public/uploads"
# end

# set :rake,            "rvm use #{rvm_ruby_version} do bundle exec rake"
# set :bundle_cmd,      "rvm use #{rvm_ruby_version} do bundle"


# # Simple Role Syntax
# # ==================
# # Supports bulk-adding hosts to roles, the primary
# # server in each group is considered to be the first
# # unless any hosts have the primary property set.
# role :app, %w{deploy@example.com}
# role :web, %w{deploy@example.com}
# role :db,  %w{deploy@example.com}

# # Extended Server Syntax
# # ======================
# # This can be used to drop a more detailed server
# # definition into the server list. The second argument
# # something that quacks like a hash can be used to set
# # extended properties on the server.
# server 'example.com', user: 'deploy', roles: %w{web app}, my_property: :my_value

# # you can set custom ssh options
# # it's possible to pass any option but you need to keep in mind that net/ssh understand limited list of options
# # you can see them in [net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start)
# # set it globally
# #  set :ssh_options, {
# #    keys: %w(/home/rlisowski/.ssh/id_rsa),
# #    forward_agent: false,
# #    auth_methods: %w(password)
# #  }
# # and/or per server
# # server 'example.com',
# #   user: 'user_name',
# #   roles: %w{web app},
# #   ssh_options: {
# #     user: 'user_name', # overrides user setting above
# #     keys: %w(/home/user_name/.ssh/id_rsa),
# #     forward_agent: false,
# #     auth_methods: %w(publickey password)
# #     # password: 'please use keys'
# #   }
# # setting per server overrides global ssh_options

# # fetch(:default_env).merge!(rails_env: :sandbox)
fetch(:default_env).merge!(rails_env: :production)
