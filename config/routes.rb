Rails.application.routes.draw do
  resources :metatags
	devise_for :admins
	resources :photos
	resources :tours
	root to: 'pages#index'

	get 'index' => 'pages#index', as: :index
	get 'franchise' => 'pages#franchise', as: :franchise
	get 'index2' => 'pages#index2', as: :index2
	get 'admin' => 'pages#admin', as: :admin

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
