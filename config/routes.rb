Rails.application.routes.draw do
  resources :companies
  resources :quotes, only: [:index]
end
