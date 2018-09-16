Rails.application.routes.draw do

resources :dressage_tests 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get '/about', to: 'welcome#about'
 root 'dressage_tests#index'
 devise_for :users
 resources :welcome 



namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :dressage_tests, only: [:index, :show, :create, :update, :destroy]
      resources :tokens, only: [:create]
      end
  end
end
