Rails.application.routes.draw do
  resources :favorites
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  namespace :api do 
    namespace :v1 do
      resources :favorites
    end 
  end 
  # get "api/v1/users/current_user", to: "api/v1/sessions#current_user"
  # post "api/v1/users/login", to: "api/v1/sessions#create"
  # delete "api/v1/users/logout", to: "api/v1/sessions#destroy"
  
  # namespace :api do 
  #   namespace :v1 do 
  #     resources :users, only: [:index, :create]
  #   end 
  # end

  # namespace :api do 
  #   namespace :v1 do 
  #     resources :favorites, only: [:index, :create]
  #   end 
  # end
end
