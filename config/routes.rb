Rails.application.routes.draw do
  root 'welcome#index'
  resources :upvotes
  resources :countries
  get '/users/:id', to: 'users#show', as: 'user'
  resources :divingsites do
    put "like" => "divingsites#upvote"
  end
    resources :reviews

    get '/signup', to: 'users#new', as: 'signup'
    post '/signup', to: 'users#create'


    # sessions management
    get '/login', to: 'sessions#new', as: 'login'
    post '/sessions', to: 'sessions#create', as: 'sessions'
    post '/logout', to: 'sessions#destroy', as: 'logout'

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :divingsites, :only => [:index, :show] do
      resources :reviews, :only => [:new, :create] do
        put "like" => "reviews#upvote"

    end
  end
end
