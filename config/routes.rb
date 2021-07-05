Rails.application.routes.draw do
  root "tops#index"
  devise_for :users
  resources :posts do
    resource :likes, only: [:create, :destroy]
  end
end
