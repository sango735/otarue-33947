Rails.application.routes.draw do
  root to: "otarues#index"
  resources :otarues, only: [:index]
  resources :abouts, only: [:index]
  resources :maps, only: [:index]
end
