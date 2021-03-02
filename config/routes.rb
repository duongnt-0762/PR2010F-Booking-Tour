Rails.application.routes.draw do
  namespace :admin do
    get '/index', to: 'static_pages#index'
    get 'static_pages/help'
    resources :requests, only: [:show, :index, :delete, :update]
  end
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

  root 'static_pages#index'
  get '/signup', to: 'users#new'
  get'/login',to: 'sessions#new'
  post'/login',to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  scope "(:locale)", locale: /en|vi/ do
  resources :users
  resources :tours
  resources :requests, only: [:show, :new, :create]
  end
end
