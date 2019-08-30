Rails.application.routes.draw do
  resources :lists do
    resources :tasks
  end
  get 'hello/index'
  get 'hello/showuser'
  devise_for :users
  root :to => "hello#index"
end
