Rails.application.routes.draw do
  root to: 'pages#index'
  devise_for :users, controllers: {registrations: 'users/registrations', sessions: 'users/sessions'}
  resources :timesheets
  resources :pages
  resources :users
  resources :home
  resources :users do
    resources :timesheets, only: %i[index]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
