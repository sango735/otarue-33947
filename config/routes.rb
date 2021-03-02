Rails.application.routes.draw do
  root to: "otarues#index"
  resources :otarues, only: [:index]
  resources :abouts, only: [:index]
  resources :maps, only: [:index]
  resources :items, only:[:index,:new,:create] do
    resources :orders, only: [:index, :new, :create]
  end
  resources :contacts, only:[:index, :new, :create]
end
