Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	devise_for :users
	resources :ideas do
		resources :messages
	end
	get '/profile', to: 'ideas#profile'
	get '/aboutus', to: 'ideas#aboutus'
	root 'ideas#index'

end
