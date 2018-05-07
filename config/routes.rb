Rails.application.routes.draw do


  #centers/index and centers/show an error i think sai fixed this?

  #these are the same thing
  get 'home/homepage'
  root 'home#homepage'



  #how do you logout?
  get 'home/logoutpage'

  #what are we doing here?
  get 'users/profile'

    #i always get redirected must be because i can't log out.
    get '/signup_signin', to: 'home#signup_signin'
    post '/signup_signin', to: 'home#signup_signin'

    # what are we doing with this cuz it doesn't have a view?
    get     '/center',   to:  'center#users'

    get    '/about',     to: 'home#about'
    get    '/contact',   to: 'home#contact'

    # do we really need a page for this?
    get    '/logout',    to: 'home#logoutpage'

    # these are cool
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
