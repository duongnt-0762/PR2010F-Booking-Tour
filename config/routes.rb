Rails.application.routes.draw do
  namespace :admin do
    get '/home', to: 'static_pages#home'
    get '/help', to: 'static_pages#help'
    get 'index', to:'static_pages#index'
  end
  root 'static_pages#index'
  get '/home', to:'static_pages#index'
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'static_pages/home1'
  get '/signup', to: 'users#new'
  get'/login',to: 'sessions#new'
  post'/login',to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  resources :tours
end
