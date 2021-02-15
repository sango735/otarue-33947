Rails.application.routes.draw do
  root to: "otarues#index"
  resources :otarue
end
