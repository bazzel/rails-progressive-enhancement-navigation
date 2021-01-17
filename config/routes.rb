Rails.application.routes.draw do
  get 'companies/:id', to: 'companies#show', as: 'example'
  get '/', to: redirect('/companies/1')
  get 'snippets/:id', to: 'snippets#show', as: 'snippet'
end
