Rails.application.routes.draw do
  devise_for :users, skip: :all

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users,only: [] do
        collection do
          post :user_login
          post :user_register
          get  :logout
        end
      end
    end
  end
end
