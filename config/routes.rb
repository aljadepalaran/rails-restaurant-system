Rails.application.routes.draw do
  root to: 'home#index'

  # register
  get 'register', to: 'registrations#new'
  post 'register', to: 'registrations#create'

  # login / logout
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # password reset
  get 'password', to: 'passwords#edit'
  patch 'password', to: 'passwords#update'

  # forgot your password
  get 'password/reset', to: 'password_resets#new'
  post 'password/reset', to: 'password_resets#create'
  get 'password/reset/edit', to: 'password_resets#edit'
  patch 'password/reset/edit', to: 'password_resets#update'

  # account edit
  get 'account', to: 'accounts#edit'
  patch 'account', to: 'accounts#update'

  resources :blogs

  namespace :admin do
    resources :users
    resources :blogs
  end
end
