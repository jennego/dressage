Rails.application.routes.draw do
  devise_for :users
  resources :dressage_tests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get '/about', to: 'welcome#about'
 root 'welcome#index'
end
