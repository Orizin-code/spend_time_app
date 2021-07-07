Rails.application.routes.draw do
  root "tops#index"
  devise_for :users
  resources :posts do
    resource :likes, only: [:create, :destroy]
  end
  resources :tops, only: %i[index edit update]
  get "/mypage/:id", to: "tops#show", as: "mypage"
end
