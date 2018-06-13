Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	devise_for :users, controllers: {omniauth_callbacks: "users/omniauth_callbacks"}
	resources :users
	resources :ideas do
		resources :funds do
			member do
				get :confirm_email
			end
		end
		resources :messages
		resources :promises
		get :favourite, on: :member
	end
	get '/aboutus', to: 'ideas#aboutus'
	root 'ideas#index'

end
