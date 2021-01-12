Rails.application.routes.draw do
  namespace :admin do
    get 'static_pages/home'
    get 'static_pages/help'
  end
  root 'home#index'
  get 'static_pages/index'
  get 'static_pages/about'

  get 'static_pages/contact'
  get 'static_pages/home1'
  get '/signup', to: 'users#new'
  get'/login',to: 'sessions#new'
  post'/login',to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users



end
