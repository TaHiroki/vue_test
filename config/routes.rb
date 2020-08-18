Rails.application.routes.draw do
  root "reports#index"

  resources :reports

  namespace 'api' do
    namespace 'v1' do
      get '/api_reports/index', to: 'api_reports#index'
    end
  end
end
