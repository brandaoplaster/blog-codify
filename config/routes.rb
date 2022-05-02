Rails.application.routes.draw do
  namespace :admin do
    resources :series
    root "dashboards#index"
  end

  root "home_pages#index"
  get "/show", to: "home_pages#show"

  devise_for :users
end
