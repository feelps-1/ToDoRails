Rails.application.routes.draw do
  resources :lists, only: [:index, :create, :destroy] do
    resources :items, only: [:index, :new, :create, :destroy] do
    end
  end
end
