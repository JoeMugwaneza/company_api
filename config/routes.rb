Rails.application.routes.draw do

  get "/companies", to: 'companies#index'
  post "/companies", to: 'companies#create'
  patch "/companies/:id", to: 'companies#update'
  delete "/companies/:id", to: 'companies#destroy'

  namespace :api do
    namespace :v1 do 
      get "/companies", to: 'companies#index'
      post "/companies", to: 'companies#create'
      patch "/companies/:id", to: 'companies#update'
      delete "/companies/:id", to: 'companies#destroy'
    end 
  end 

end
