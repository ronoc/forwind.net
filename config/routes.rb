Rails.application.routes.draw do
    # NAMED ROUTES
    match "/login", :to => "user_sessions#new", :as => "login"
    match "/logout", :to => "user_sessions#destroy", :as => "logout"
    match "/about", :to => "home#about", :as => "about"

    # RESOURCES
    get 'podcasts/current'
    post 'home/subscribe'
    resources :podcasts
    resources :user_sessions
    resources :users
    resources :artists
    resources :releases 
   
    root :to => "home#index"
end

