Rails.application.routes.draw do
root 'home#landingpage'
  get 'home/landingpage'
  get 'home/logoutpage'
  get 'users/profile'

    get    '/welcome',   to: 'home#landingpage'
    get     '/center',   to:  'center#users'
    get    '/about',     to: 'home#about'
    get    '/contact',   to: 'home#contact'
    get    '/logout',    to: 'home#logoutpage'

    get    '/jobs',      to:  'posts#jobs'
    post   '/jobs',      to:  'posts#jobs'
    put   '/jobs',      to:  'posts#jobs'

    get    '/meals',      to:  'posts#meals'
    post   '/meals',      to:  'posts#meals'
    put   '/meals',      to:  'posts#meals'

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
