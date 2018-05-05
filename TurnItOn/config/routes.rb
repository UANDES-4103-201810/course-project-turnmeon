Rails.application.routes.draw do
	devise_for :users
	resources :ideas do
		resources :messages
	end
	root 'ideas#index'

end
