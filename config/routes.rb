Rails.application.routes.draw do
  root to: 'accounts#index'
  resources :accounts, only: [:index, :delete]
end
