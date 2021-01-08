Rails.application.routes.draw do
  examples = %w[uno due tre quattro cinque sei]
  namespace 'companies' do
    examples.each do |action|
      get action
    end
  end

  root "companies##{examples.first}"
end
