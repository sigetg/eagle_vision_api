Rails.application.routes.draw do
  resources :terms
  resources :people
  resources :registration_requests
  resources :registration_request_items
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
