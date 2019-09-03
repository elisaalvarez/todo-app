# frozen_string_literal: true

Rails.application.routes.draw do
  resources :lists do
    resources :tasks
  end
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
  get 'hello/index'
  get 'hello/showuser'
  devise_for :users
  root to: 'hello#index'
end
