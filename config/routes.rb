Rails.application.routes.draw do
  resources :restaurants, only: [:index, :create, :new, :show] do
    resources :reviews, only: [:new, :create, :show ]
  end
end
