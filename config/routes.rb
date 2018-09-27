Rails.application.routes.draw do
  resources :transactions
  resources :categories
  resources :typepayments
  resources :doctypes
  resources :accountfinancials
  resources :accountbanks
  resources :companyproviders
  resources :companies
  devise_for :users
  root to: 'transactions#index'
  get "/transactions/export" => "transactions#export"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
