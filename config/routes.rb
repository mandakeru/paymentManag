Rails.application.routes.draw do
  resources :payments
  devise_for :users
  root 'welcome#index'

  
end
