Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "home#index"
  resources :releases
  get 'current', to: :current, controller: 'releases'
  resources :artists
  resources :podcasts
  get 'current', to: :current, controller: 'podcasts'
  get 'about', to: :about, controller: 'home'
  # created for UI-dev purposes
  resources :news
  get 'catalogue', to: :catalogue, controller: 'home'
end
