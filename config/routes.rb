Rails.application.routes.draw do
  root "reports#index"

  resources :reports

  namespace 'api' do
    namespace 'v1' do
      get '/api_reports/index', to: 'api_reports#index'
      get '/api_reports/show', to: 'api_reports#show'
      post '/api_reports/create', to: 'api_reports#create'
    end
  end
end
