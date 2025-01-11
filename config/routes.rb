Rails.application.routes.draw do
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
