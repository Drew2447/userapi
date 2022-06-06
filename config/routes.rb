Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    get '/porfile', to: 'porfile#index'
    post '/porfile', to: 'porfile#create'

    get '/porfile/:id', to: "porfile#show"
    put '/porfile/:id', to: "porfile#update"

    delete '/porfile/:id', to:'porfile#destroy'
  end  
end
