Rails.application.routes.draw do
  get 'sessions/new'

  get 'tbl_user/new'

  resources :tbl_services
  resources :tbl_ratings
  resources :tbl_inventories
  resources :tbl_dogs
  resources :tbl_users
  resources :tbl_bookings
    
  get 'home/index'
    root 'home#index'
  	get  '/contact',   to: 'application#contact'
    get  '/services',   to: 'application#services'
    get  '/signup',  to: 'tbl_users#new'
    post '/signup',  to: 'tbl_users#create'
    get  '/dogs', to: 'tbl_dogs#new'
    post '/tbl_dogs', to: 'tbl_dogs#create'
    
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get  '/inventory',   to: 'tbl_inventories#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
