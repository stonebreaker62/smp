# config valid for current version and patch releases of Capistrano
lock "~> 3.19.2"

# Name der Anwendung und Repository
set :application, "smp"
set :repo_url, "git@github.com:stonebreaker62/smp.git"
set :branch, "main"

# Verzeichnis auf dem Server, in dem die Anwendung installiert wird
set :deploy_to, "/var/www/smp"

# Ruby & Bundler-Konfiguration
set :rbenv_type, :user
set :rbenv_ruby, "3.4.2"  # Deine Ruby-Version

# Puma-Konfiguration
set :puma_threads, [ 4, 16 ]
set :puma_workers, 2
set :puma_bind, "tcp://127.0.0.1:9000"
set :puma_state, "#{shared_path}/tmp/pids/puma.state"
set :puma_pid, "#{shared_path}/tmp/pids/puma.pid"
set :puma_access_log, "#{shared_path}/log/puma.access.log"
set :puma_error_log, "#{shared_path}/log/puma.error.log"
set :puma_preload_app, true
set :puma_worker_timeout, nil
set :puma_init_active_record, true  # Wenn du ActiveRecord verwendest

# Verzeichnisse und Dateien, die zwischen Deployments geteilt werden
# append :linked_files, "config/database.yml", "config/master.key"
set :linked_files, fetch(:linked_files, []).push("config/database.yml", "config/master.key")
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system", "public/uploads"

set :bundle_flags, "--deployment --quiet"
set :bundle_without, %w[development test].join(" ")
set :bundle_path, -> { shared_path.join("bundle") } # Installiert Gems im shared-Verzeichnis
set :bundle_binstubs, -> { shared_path.join("bin") }

# Optional: Nginx-Konfiguration für Capistrano
set :nginx_server_name, "steinmetzpartners.com www.steinmetzpartners.com steinmetzpartners.de www.steinmetzpartners.de"
