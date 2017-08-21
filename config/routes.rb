Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    resources :invitations, only: [:index]

    root 'invitations#index'
  end

  resources :invitations, only: [:index, :show, :create]

  root 'invitations#new'
end
