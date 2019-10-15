Rails.application.routes.draw do
	
  resources :contacts
	devise_for :admins
	resources :metatags
	resources :photos
	resources :tours
	root to: 'pages#index'

	get 'closed' => 'pages#closed', as: :closed
	get 'index' => 'pages#index', as: :index
	get 'results' => 'pages#results', as: :results
	get 'order-form' => 'pages#orderForm', as: :orderForm
	get 'admin' => 'pages#admin', as: :admin
	get 'franchise' => 'pages#landing', as: :franchise
	resources :comments, only: [:new, :create]	

	scope ":locale" do
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
