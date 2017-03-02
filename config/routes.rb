Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do 
      get "/companies", to: 'companies#index'
      get "companies/:id", to: 'companies#show'
      post "/companies", to: 'companies#create'
      patch "/companies/:id", to: 'companies#update'
      delete "/companies/:id", to: 'companies#destroy'
    end
  end

  
  get "/companies", to: 'companies#index'
end
