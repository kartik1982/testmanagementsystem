Rails.application.routes.draw do
  devise_for :users, :controllers =>{:registrations => 'user/registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'users', to: 'devise#index'
  # get 'users/new', to: 'devise#new'
  get 'testmanagement', to: 'pages#testmanagement'
  get 'testresources', to: 'pages#testresources'
  resources 'testcases'
  resources 'testsuites'
  resources :groups
  resources :devices
end
