Rails.application.routes.draw do
root 'home#landingpage'
  get 'home/landingpage'
  get 'home/logoutpage'
  get 'users/profile'

  get 'users/center'
  put 'users/center'

  get 'posts/jobs'
  post 'posts/jobs'
  put 'posts/jobs'

  get 'posts/meals'
  post 'posts/meals'
  put 'posts/meals'

  get 'posts/shelters'
  post 'posts/shetlers'
  put 'posts/shetlers'


  get 'posts/supplies'
  post 'posts/supplies'
  put 'posts/supplies' 


  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
