Rails.application.routes.draw do
  resources :upvotes
  resources :countries
  resources :divingsites do
    put "like" => "divingsites#upvote"
  end
    resources :reviews
    resources :users

    get "/login" => "sessions#new"
    post "/login" => "sessions#create"
    post "/logout" => "sessions#destroy"
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :divingsites, :only => [:index, :show] do
      resources :reviews, :only => [:new, :create] do
        put "like" => "reviews#upvote"
      
    end
  end
end
