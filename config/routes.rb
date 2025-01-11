Rails.application.routes.draw do
  devise_for :users
  root to: "lists#index"
  resources :lists, only: [:index, :create, :destroy] do
    resources :items, only: [:index, :create, :destroy] do
      member do
        patch :update_status
      end
      collection do
        get :filter
      end
    end
  end
end
