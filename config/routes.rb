Rails.application.routes.draw do
  # [...]
  devise_for :users
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :restaurants, only: [:index, :show, :create, :update, :destroy]
    end

    # namespace :v2 do
    # end
  end
end
