Rails.application.routes.draw do
  root "home_pages#index"
  get "/show", to: "home_pages#show"
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
