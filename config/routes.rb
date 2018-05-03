Rails.application.routes.draw do
root 'home#landingpage'
  get 'home/landingpage'
  get 'home/logoutpage'
  get 'users/new'
  get 'home/about'
  get 'home/contact'
  devise_for :users

  resources :center

  resources :post
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
