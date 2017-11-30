Rails.application.routes.draw do
  devise_for :customers
  
  resources :line_items
  resource :carts, only: [:show]
  root to: 'products#index'

  get 'product/:id', to: 'products#show', as: 'product', id: /\d+/

  get 'about', to: 'pages#about', as: 'about'

  get 'contact', to: 'pages#contact', as: 'contact'

  get 'search_results' => 'products#search_results', as: 'search_results'

  get 'category/:id', to: 'categories#brand_category', as: 'category', id: /\d+/

  get 'recently_added', to: 'products#new', as: 'recently_added'
  get 'recently_updated', to: 'products#recently_updated', as: 'recently_updated'

  get 'charges', to: 'charges#index', as: 'charges'
  get 'signin', to: 'customers#index', as: 'signin'


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
