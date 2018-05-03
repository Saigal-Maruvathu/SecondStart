Rails.application.routes.draw do
root 'home#landingpage'

  get    '/welcome',          to: 'home#landingpage'
  get     '/center',          to: 'centers#new'
  get    '/about',            to: 'home#about'
  get    '/contact',          to: 'home#contact'
  get    '/logout',           to: 'home#logoutpage'
  get    '/jobs',             to:  'posts#jobs'
  post   '/create_jobs',      to:  'posts#jobs'
  get    '/meals',            to:  'posts#meals'
  post   '/create_meals',     to:  'posts#meals'
  get    '/shelters',         to:  'posts#shelters'
  post   '/create_shelters',  to:  'posts#shelters'
  get    '/supplies',         to:  'posts#supplies'
  post   '/create_supplies',  to:  'posts#supplies'










  devise_for :users

  resources :centers

  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
