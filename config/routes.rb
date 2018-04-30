Rails.application.routes.draw do
root 'home#landingpage'
  get 'home/landingpage'
  get 'home/logoutpage'
  get 'users/new'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
