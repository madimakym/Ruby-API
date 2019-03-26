Rails.application.routes.draw do

  resources :evenements
  resources :dejeuners
  resources :users
  root 'dejeuners#index'
  
  namespace 'api' do
      resources :dejeuners
      resources :evenements
  end

#   namespace 'api' do
    
# end


end
