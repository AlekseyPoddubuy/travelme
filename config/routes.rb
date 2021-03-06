Rails.application.routes.draw do
	
  resources :points
  resources :cities
  resources :contacts
	devise_for :admins
	resources :metatags
	resources :photos
	resources :tours
	root to: 'pages#index'

	get 'closed' => 'pages#closed', as: :closed
	get 'index' => 'pages#index', as: :index
	get 'populars' => 'pages#populars', as: :populars
	get 'results' => 'pages#results', as: :results
	get 'order-form' => 'pages#orderForm', as: :orderForm
	get 'admin' => 'pages#admin', as: :admin
	get 'franchise' => 'pages#landing', as: :franchise
	resources :comments, only: [:new, :create]	
	resources :selections, only: [:new, :create]	

	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
