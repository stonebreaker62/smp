Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
  get "set_language/de"
  get "set_language/en"
  get "cookies/index"
  get "cookies/consent"
  get "cookies/policy"
  get "page/index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # ##################################################
  # Defines the root path route ("/")
  root "page#index"

  # set cookie routes
  get "cookies", to: "cookies#index"
  get "cookies/policy", to: "cookies#policy", as: "cookie_policy"
  post "cookies/consent", to: "cookies#consent", as: "cookie_consent"
  get "external_content", to: "static_pages#external_content"

  # set locale routes
  match "de" => "set_language#de", via: %i[get post]
  match "en" => "set_language#en", via: %i[get post]
  # ##################################################

  match "profile_hs" => "static_pages#profile_hs", via: %i[get post]
  match "profile_ts" => "static_pages#profile_ts", via: %i[get post]
  match "profile_hg" => "static_pages#profile_hg", via: %i[get post]
  match "profile_os" => "static_pages#profile_os", via: %i[get post]
  match "profile_yp" => "static_pages#profile_yp", via: %i[get post]
  match "profile_mg" => "static_pages#profile_mg", via: %i[get post]
  match "profile_kw" => "static_pages#profile_kw", via: %i[get post]
  match "profile_jm" => "static_pages#profile_jm", via: %i[get post]
  match "profile_js" => "static_pages#profile_js", via: %i[get post]
  match "profile_kl" => "static_pages#profile_kl", via: %i[get post]
  match "profile_jb" => "static_pages#profile_jb", via: %i[get post]
  match "profile_ck" => "static_pages#profile_ck", via: %i[get post]

  match "fsi" => "static_pages#fsi", via: %i[get post]
  match "consulting" => "static_pages#consulting", via: %i[get post]
  match "equity" => "static_pages#equity", via: %i[get post]
  match "info_datasecurity" => "static_pages#privacy", via: %i[get post]
  match "info_details" => "static_pages#info_details", via: %i[get post]
  match "info_imprint" => "static_pages#imprint", via: %i[get post]
  match "info_legal" => "static_pages#info_legal", via: %i[get post]
  match "info_roda" => "static_pages#info_roda", via: %i[get post]
  match "info_terms" => "static_pages#info_terms", via: %i[get post]
  match "info_todos" => "static_pages#info_todos", via: %i[get post]
  match "info_industries" => "static_pages#info_industries", via: %i[get post]
  match "info_principles" => "static_pages#info_principles", via: %i[get post]
  match "it" => "static_pages#it", via: %i[get post]
  match "it_consulting" => "static_pages#it_consulting", via: %i[get post]
  match "legal_consulting" => "static_pages#legal_consulting", via: %i[get post]
  match "positions" => "static_pages#positions", via: %i[get post]
  match "industries" => "static_pages#industries", via: %i[get post]
  match "principles" => "static_pages#principles", via: %i[get post]
  match "about" => "static_pages#about", via: %i[get post]
  match "team" => "static_pages#team", via: %i[get post]
  match "expert" => "static_pages#expert", via: %i[get post]
  match "executive" => "static_pages#executive", via: %i[get post]
  match "career" => "static_pages#career", via: %i[get post]
  match "join" => "static_pages#join", via: %i[get post]

  match "*unmatched", to: "application#route_not_found", via: :all
end
