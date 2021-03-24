Rails.application.routes.draw do
  resources :scientists
  resources :missions, only: [:new, :create]
  resources :planets, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
