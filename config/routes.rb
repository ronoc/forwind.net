Rails.application.routes.draw do
    # NAMED ROUTES

    #map.login "login", :controller => "user_sessions", :action => "new"
    match "/login", :to => "user_sessions#new", :as => "login"
    #map.logout "logout", :controller => "user_sessions", :action => "destroy"
    match "/logout", :to => "user_sessions#destroy", :as => "logout"
    #map.about 'home/about', :controller => 'home', :action => 'about'
    match "/about", :to => "home#about", :as => "about"

    # RESOURCES
    #map.resources :podcasts, :only => [:index, :show, :current]
    resources :podcasts

    #map.resources :user_sessions
    resources :user_sessions

    #map.resources :users
    resources :users

    #map.resources :artists, :has_many => [:releases]
    resources :artists

    #map.resources :releases, :only => [:index, :show], :has_many => [:pieces]
    resources :releases 
   
    #map.root :controller => "home"
    root :to => "home#index"

    # Install the default route as the lowest priority.
    #map.connect ':controller/:action/:id.:format'
    #match '/:controller(/:action(/:id))'    
    #map.connect ':controller/:action/:id'
    #match '/:controller(/:action(/:id))'    
end

