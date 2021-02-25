Rails.application.routes.draw do
  root to: "otarues#index"
  resources :otarues, only: [:index]
  resources :abouts, only: [:index]
  resources :maps, only: [:index]
  resources :likes, only:[:index, :create,:destroy]
  resources :orders, only: [:index, :new, :create]
  resources :contacts, only:[:index, :new, :create]
end
