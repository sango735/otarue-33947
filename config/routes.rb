Rails.application.routes.draw do
  root to: 'otarues#index'
  resources :otarues, only: [:index]
  resources :abouts, only: [:index]
  resources :maps, only: [:index]
  resources :items, only: [:index] do
    resources :orders, only: %i[index create]
  end
  resources :contacts, only: %i[index new create]
end
