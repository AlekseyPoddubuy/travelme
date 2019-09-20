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
	# get 'index2' => 'pages#index2', as: :index2
	get 'franchise' => 'pages#franchise', as: :franchise
	get 'admin' => 'pages#admin', as: :admin

	scope ":locale" do
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
