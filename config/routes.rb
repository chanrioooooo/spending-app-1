Rails.application.routes.draw do
  devise_for :users
  root to: "spendings#index"

  resources :spendings, only: [:index, :new, :create]

end
