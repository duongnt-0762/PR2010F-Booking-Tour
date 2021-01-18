Rails.application.routes.draw do
  namespace :admin do
    get 'static_pages/home'
    get 'static_pages/help'
  end
  root 'home#index'
  get '/home', to: 'static_pages#index'
  get '/signup', to: 'users#new'
  get'/login',to: 'sessions#new'
  post'/login',to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  resources :tours
end
