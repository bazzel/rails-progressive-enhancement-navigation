Rails.application.routes.draw do
  examples = %w[uno due tre quattro cinque sei]
  namespace 'companies' do
    examples.each do |action|
      get action
    end
  end

  get 'examples/:example', to: 'examples#show', as: 'examples'

  root "companies##{examples.first}"
end
