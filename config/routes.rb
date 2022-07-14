# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :api_docs, only: [:index]
  get '/swagger' => redirect('/swagger/index.html')

  namespace :v1 do
    resources :pings
  end
end
