Rails.application.routes.draw do
  get 'about-us', to: 'about#index', as: :about
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'password', to: 'passwords#edit', as: :edit_password
  patch 'password', to: 'passwords#update'
  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'
  delete 'logout', to: 'sessions#destroy'
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  get 'password/resets/edit', to: 'password_resets#edit'
  patch 'password/resets/edit', to: 'password_resets#update'

  root to: 'main#index'
end
