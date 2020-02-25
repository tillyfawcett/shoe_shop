Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  resources :shoes, only: [:index, :show]
  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
