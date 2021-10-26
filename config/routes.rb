Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "tops#index"
  devise_for :users, controllers: {
    registrations: "users/registrations",
    passwords: "users/passwords"
  }

  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end

  resources :users
  resources :posts, only: [:index, :show, :new, :create] do
    resources :comments, only: [:create, :destroy]
  end

  resources :posts do
    resource :likes, only: [:create, :destroy]
  end
  resources :tops, only: [:index, :edit, :update]
  get "/mypage/:id", to: "tops#show", as: "mypage"
  get "/likelist/:id", to: "tops#like", as: "likelist"

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  get "/contacts", to: "contacts#index", as: "contacts"
  resources :contacts, only: %i[index create]
end
