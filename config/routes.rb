Rails.application.routes.draw do
  namespace :admin do
    get 'static_pages/home'
    get 'static_pages/help'
  end
  root 'home#index'
  get 'static_pages/index'
  get 'static_pages/about'

end
