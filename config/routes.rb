Rails.application.routes.draw do
  root to: 'products#index'

  get 'products/show'

  get 'about', to: 'pages#about', as: 'about'

  get 'contact', to: 'pages#contact', as: 'contact'

  get 'search' => 'products#search', as: 'search'
  get 'search_results' => 'products#search_results', as: 'search_results'

  get 'category/:id', to: 'categories#brand_category', as: 'category', id: /\d+/

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
