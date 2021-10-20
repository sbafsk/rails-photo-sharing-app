Rails.application.routes.draw do
  resources :posts
  resources :users

  resources :sessions, only: %i[new create destroy]
  
  root 'posts#index'
  
  get 'home', to:'posts#index'
  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'
  get 'signup', to: 'users#new'
  get 'sessions', to: 'sessions#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
