Rails.application.routes.draw do

resources :dressage_tests 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get '/about', to: 'welcome#about'
 root 'welcome#index'
 devise_for :users



namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :dressage_tests, only: [:index, :show, :create, :update, :destroy]
      resources :tokens, only: [:create]
      end
  end

  get '*path', to: "application#fallback_index_html", constraints: ->(request) do
  !request.xhr? && request.format.html?
end

end
