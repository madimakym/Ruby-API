Rails.application.routes.draw do

  resources :evenements
  resources :dejeuners
  resources :users
  root 'users#index'
  
  namespace 'api' do
      resources :dejeuners
  end

end
