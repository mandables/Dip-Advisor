Rails.application.routes.draw do
  resources :upvotes
  resources :countries
  resources :diving_sites
  resources :reviews
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end