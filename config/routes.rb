Rails.application.routes.draw do
  get 'home/landingpage'
  root 'home#landingpage'

  get 'home/logoutpage'
  get 'users/profile'


    get '/signup_signin', to: 'home#signup_signin'
    get '/hub', to: 'home#homepage'

    get    '/welcome',    to: 'home#landingpage'
    get    '/about',      to: 'home#about'
    get    '/contact',    to: 'home#contact'
    get    '/logout',     to: 'home#logoutpage'

    get    '/jobs',       to:  'posts#show_jobs'
    post   '/jobs',       to:  'posts#create_jobs'
    put   '/jobs',        to:  'posts#editjobs'

    get    '/meals',      to:  'posts#show_meals'
    post   '/meals',      to:  'posts#create'
    put   '/meals',       to:  'posts#edit_meals'

    get    '/shelters',   to:  'posts#show_shelters'
    post   '/shelters',   to:  'posts#create_shelters'
    put   '/shelters',    to:  'posts#edit_shelters'

    get    '/supplies',   to:  'posts#show_supplies'
    post   '/supplies',   to:  'posts#create_supplies'
    put   '/supplies',    to:  'posts#edit_supplies'


  devise_for :users

  resources :centers

  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
