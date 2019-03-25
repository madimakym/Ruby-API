Rails.application.routes.draw do

  resources :evenements
  resources :dejeuners
  resources :users
  
  root 'users#index'
  
  # get 'users' => 'users#index'
end
