Rails.application.routes.draw do
#	resources :metatags
#	devise_for :admins
#	resources :photos
#	resources :tours
	root to: 'pages#closed'

	#scope ":locale" do
get 'closed' => 'pages#closed', as: :closed
	#	get 'index' => 'pages#index', as: :index
	#	get 'franchise' => 'pages#franchise', as: :franchise
	#	get 'index2' => 'pages#index2', as: :index2
	#	get 'admin' => 'pages#admin', as: :admin
#	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
