Rails.application.routes.draw do
  resources :tblservices
  resources :tblratings
  resources :tblinventories
  resources :tbldogs
  resources :tblstaffs
  resources :tblclients
  resources :tblbookings
  get 'home/index'
    root 'home#index'
    get  '/contact',   to: 'application#contact'
    get  '/services',   to: 'application#services'
    get  '/inventory',   to: 'application#inventory'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
