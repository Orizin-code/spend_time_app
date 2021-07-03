Rails.application.routes.draw do
  root "tops#index"
  devise_for :users
  resources :posts
end
