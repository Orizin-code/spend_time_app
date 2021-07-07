Rails.application.routes.draw do
  root "tops#index"
  devise_for :users, controllers: {
    registrations: "users/registrations",
    passwords: "users/passwords"
  }

  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end

  resources :posts do
    resource :likes, only: [:create, :destroy]
  end
  resources :tops, only: %i[index edit update]
  get "/mypage/:id", to: "tops#show", as: "mypage"
end
