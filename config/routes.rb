Rails.application.routes.draw do
  devise_for :users
  resources :users
  root to: "homes#index"
  resources :jobs
end
