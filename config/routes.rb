Rails.application.routes.draw do
  get 'companies/:id', to: 'companies#show', as: 'example'
  get 'snippets/:id', to: 'snippets#show', as: 'snippet'

  root 'companies#1'
end
