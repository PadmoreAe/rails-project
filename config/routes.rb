Rails.application.routes.draw do
  get 'admin/dashboard'
  resources :signboards
  resources :owners
  root to: 'signboards#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
