Rails.application.routes.draw do

resources :dressage_tests 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get '/about', to: 'welcome#about'
 root 'dressage_tests#index'
 devise_for :users
end
