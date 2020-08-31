Rails.application.routes.draw do
  get 'all', to: 'companies#all'
  get 'next', to: 'companies#next'
  get 'more', to: 'companies#more'
  get 'endless', to: 'companies#endless'

  root to: 'companies#all'
end
