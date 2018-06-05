Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	devise_for :users
	resources :users
	resources :ideas do
		resources :funds
		resources :messages
		resources :promises
		get :favourite, on: :member
	end
	get '/aboutus', to: 'ideas#aboutus'
	root 'ideas#index'

end
