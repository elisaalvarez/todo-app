Rails.application.routes.draw do
  resources :lists
  get 'hello/index'
  # get 'devise/sessions#destroy'
  devise_for :users
  root :to => "lists#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
