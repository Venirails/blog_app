Rails.application.routes.draw do
  root "articles#index"

  resources :articles do
    resources :comments
  end
  
  # # display all
  # get '/articles', to: "articles#index"
  
  # # new
  # get "/articles/new", to: "articles#new", as: "new_article"

  # # display specific
  # get "/articles/:id", to: "articles#show", as: "article"

  # # create
  # post "/articles", to: "articles#create"

  # # edit
  # get "/articles/:id/edit", to: "articles#edit", as: "edit_article"

  # # update
  # patch "/articles/:id", to: "articles#update"

  # # delete
  # delete "/articles/:id", to: "articles#destroy"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
