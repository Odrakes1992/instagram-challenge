Rails.application.routes.draw do
  get 'welcome/index'
  
  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create', as: 'log_in'
  delete 'logout', to: 'sessions#destroy'
  get 'logout', to: 'sessions#destroy'
  get 'edit_password', to: 'passwords#edit'

  get 'posts', to: 'posts#index'
  post 'posts', to: 'posts#create'
  get 'test_post', to: 'posts#index'
  get 'new_post', to: 'posts#new'


  
  root to: 'welcome#index' # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
