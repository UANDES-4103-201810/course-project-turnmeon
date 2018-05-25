Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	devise_for :users
	resources :users
	resources :ideas do
		resources :messages
		resources :promises
	end
	get '/aboutus', to: 'ideas#aboutus'
	root 'ideas#index'

end
