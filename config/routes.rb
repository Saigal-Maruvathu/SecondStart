Rails.application.routes.draw do
#  get 'home/profilepage'
  root 'home#profilepage'

  get 'home/logoutpage'
  get 'users/profile'


    get '/signup_signin', to: 'home#signup_signin'
    post '/signup_signin', to: 'home#signup_signin'

    get    '/welcome',   to: 'home#homepage'
    get     '/center',   to:  'center#users'
    get    '/about',     to: 'home#about'
    get    '/contact',   to: 'home#contact'
    get    '/logout',    to: 'home#logoutpage'

    get    '/jobs',      to:  'posts#jobs'
    post   '/jobs',      to:  'posts#jobs'
    put   '/jobs',      to:  'posts#jobs'

    get    '/meals',      to:  'posts#show_meals'
    post   '/meals',      to:  'posts#create_meals'
    put   '/meals',      to:  'posts#edit_meals'

    get    '/shelters',      to:  'posts#shelters'
    post   '/shelters',      to:  'posts#shelters'
    put   '/shelters',      to:  'posts#shelters'

    get    '/supplies',      to:  'posts#supplies'
    post   '/supplies',      to:  'posts#supplies'
    put   '/supplies',      to:  'posts#supplies'


  devise_for :users

  resources :centers

  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
