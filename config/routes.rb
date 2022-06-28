Rails.application.routes.draw do
  resources :users, only: [:new, :create, :edit, :show, :update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/users/edit/:id', to: 'users#edit'
  get '/users/:id', to: 'users#show'
  # get '/users/:id', to: 'users#update'
  # patch '/users/:id', to: 'users#update'
  # Defines the root path route ("/")
  root "users#index"
end
