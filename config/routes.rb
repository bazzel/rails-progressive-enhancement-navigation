Rails.application.routes.draw do
  get '/companies', to: 'companies#index'

  root to: 'companies#index'
end
