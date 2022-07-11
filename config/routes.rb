Rails.application.routes.draw do
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :lists
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "lists#index"
  # Defines the root path route ("/")
  
end
