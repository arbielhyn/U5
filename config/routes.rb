Rails.application.routes.draw do
  resources :products, only: [:index, :show]

  # Set the root route to products#index
  root 'products#index'

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  get "up" => "rails/health#show", as: :rails_health_check

  # You can remove or uncomment this line if you have other controllers or actions to define.
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
