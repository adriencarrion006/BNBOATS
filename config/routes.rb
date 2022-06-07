Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :boats do
    resources :rents, only: [:new, :create]
  end


resources :rents, only: [:destroy, :update, :edit, :index, :show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
