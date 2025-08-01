
# deploy/production.rb

server "194.164.199.131", user: "deploy", roles: %w[app db web], primary: true

set :rails_env, "production"
set :deploy_to, "/var/www/smp"

