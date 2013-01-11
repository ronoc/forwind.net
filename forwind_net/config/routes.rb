ActionController::Routing::Routes.draw do |map|
    # NAMED ROUTES

    #map.login "login", :controller => "user_sessions", :action => "new"
    match "/login", :to => "user_sessions#new", :as => "login"
    #map.logout "logout", :controller => "user_sessions", :action => "destroy"
    match "/logout", :to => "user_sessions#destroy", :as => "logout"
    #map.about 'home/about', :controller => 'home', :action => 'about'
    match "/about", :to => "home#about", :as => "about"


    # RESOURCES
    #map.resources :podcasts, :only => [:index, :show, :current]
    resources :podcasts do 
        podcast do
            :only => [:index, :show, :current]
        end
    end

    #map.resources :user_sessions
    resources :user_sessions do
    end

    #map.resources :users
    resources :users do
    end

    #map.resources :artists, :has_many => [:releases]
    resources :artists do 
        artist do 
            :has_many => [:releases]
        end
    end

    #map.resources :releases, :only => [:index, :show], :has_many => [:pieces]
    resources :artists do 
        artist do 
            :has_many => [:releases]
        end
    end
   
    #map.resources :home
    resources :home do
    end

    #map.root :controller => "home"
    root :to => "home#index"

    # Install the default route as the lowest priority.
    #map.connect ':controller/:action/:id.:format'
    #match '/:controller(/:action(/:id))'    
    #map.connect ':controller/:action/:id'
    match '/:controller(/:action(/:id))'    
end

