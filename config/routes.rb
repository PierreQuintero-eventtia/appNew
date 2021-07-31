# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users 
  root 'home#index'
  get 'contact', to: 'home#contact'
  get 'terms', to: 'home#terms'
  get 'about_us', to: 'home#about_us'
  get 'dashboard', to: 'home#dashboard'
  get 'users/:id', to: 'users#update_status', as: :update_status
  match '/users/:id', to: 'users#destroy', as: :destroy_user, via: :delete
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
