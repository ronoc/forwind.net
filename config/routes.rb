Rails.application.routes.draw do
  root :to => "home#index"
  resources :releases
  get 'current', to: :current, controller: 'releases'
  resources :artists
  resources :podcasts
  get 'current', to: :current, controller: 'podcasts'
  get 'about', to: :about, controller: 'home'
end
