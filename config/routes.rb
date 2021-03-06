Rails.application.routes.draw do

resources :dressage_tests  do
    resources :favourites, shallow: true, only: [:create, :destroy]
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get '/about', to: 'welcome#about'
 get '/joinus', to: 'dashboard#joinus'
 root 'welcome#index'
 devise_for :users

get 'auth/auth0', as: 'authentication'        # Triggers authentication process
get 'auth/auth0/callback' => 'auth0#callback' # Authentication successful
get 'auth/failure' => 'auth0#failure'         # Authentication fail
get '/auth/logout' => 'auth0#logout'

resources :dashboard, only: [:show, :index]

namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get '/favourites', to: 'favourites#index' 
      resources :dressage_tests, only: [:index, :show, :create, :update, :destroy] do
        resources :favourites, shallow: true, only: [:create, :destroy]  
        end
      end
  end

  get '*path', to: "application#fallback_index_html", constraints: ->(request) do
  !request.xhr? && request.format.html?
end

end
