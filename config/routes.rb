Rails.application.routes.draw do
  resources :course_offerings do
    resources :activity_offerings
  end
  resources :activity_offerings
  resources :terms
  resources :people
  resources :registration_request_items do
    resources :activity_offerings
  end

  resources :registration_requests do
    resources :registration_request_items
  end
  get 'registration_request_items', to: 'registration_request_items#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "registration_requests#index"
end
