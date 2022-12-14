Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      # /api/v1
      resources :validate_codes, only: [:create]
      resource :session, only: [:create, :update]
      resource :me, only: [:show]
      resources :items
      resources :tags
    end
  end
end
