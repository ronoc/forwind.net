Rails.application.routes.draw do
    # NAMED ROUTES
    match "/login", :to => "user_sessions#new", :as => "login"
    match "/logout", :to => "user_sessions#destroy", :as => "logout"
    match "/about", :to => "home#about", :as => "about"

    # RESOURCES
    get 'podcasts/current'
    resources :podcasts

    resources :user_sessions

    resources :users

    resources :artists

    resources :releases 
   
    root :to => "home#index"

    # Install the default route as the lowest priority.
    #map.connect ':controller/:action/:id.:format'
    #match '/:controller(/:action(/:id))'    
    #map.connect ':controller/:action/:id'
    #match '/:controller(/:action(/:id))'    
end

