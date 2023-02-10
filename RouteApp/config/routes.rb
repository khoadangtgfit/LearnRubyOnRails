Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "products#index"
  resources :products, path: 'admin/hello'
  resources :types
  resources :products do
    resources :types
  end

end
