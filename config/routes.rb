Rails.application.routes.draw do
#  get 'home/profilepage'
  root 'home#homepage'

  get 'home/logoutpage'
  get 'users/profile'


    get '/signup_signin', to: 'home#signup_signin'
    post '/signup_signin', to: 'home#signup_signin'

    get    '/welcome',   to: 'home#homepage'

    get     '/center',   to:  'center#users'
    get    '/about',     to: 'home#about'
    get    '/contact',   to: 'home#contact'
    get    '/logout',    to: 'home#logoutpage'

    get    '/welcome',    to: 'home#landingpage'
    get    '/about',      to: 'home#about'
    get    '/contact',    to: 'home#contact'
    get    '/logout',     to: 'home#logoutpage'


    get    '/jobs',       to:  'posts#show_jobs'
    post   '/jobs',       to:  'posts#create'
    put   '/jobs',        to:  'posts#editjobs'

    get    '/meals',      to:  'posts#show_meals'
    post   '/meals',      to:  'posts#create'
    put   '/meals',       to:  'posts#edit_meals'

    get    '/shelters',   to:  'posts#show_shelters'
    post   '/shelters',   to:  'posts#create'
    put   '/shelters',    to:  'posts#edit_shelters'

    get    '/supplies',   to:  'posts#show_supplies'
    post   '/supplies',   to:  'posts#create'
    put   '/supplies',    to:  'posts#edit_supplies'


  devise_for :users

  resources :centers

  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
