Rails.application.routes.draw do
root 'home#landingpage'
  get 'home/landingpage'
  get 'home/logoutpage'
  get 'users/profile'

  get 'users/center'

  get 'posts/jobs'
  post 'posts/jobs'
  get 'posts/meals'
  post 'posts/meals'
  get 'posts/shelters'
  get 'posts/supplies'
  post 'posts/supplies'


  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
