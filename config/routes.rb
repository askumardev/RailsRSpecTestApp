Rails.application.routes.draw do

  resources :users
  resources :articles
  #root to: "articles#index"
  root to: "users#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
