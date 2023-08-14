Rails.application.routes.draw do
  resources :activity_offerings
  resources :course_offerings
  resources :terms
  resources :people do
    resources :registration_request_items
  end
  resources :registration_requests do
    resources :registration_request_items
  end
  get 'registration_request_items', to: 'registration_request_items#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "registration_requests#index"
end
