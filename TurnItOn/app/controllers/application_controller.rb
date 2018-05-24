class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	before_action :configure_permited_parameters, if: :devise_controller?
	protected
	def configure_permited_parameters
		devise_parameter_sanitizer.permit(:sign_up){ |a| a.permit(:first_name, :last_name, :birthdate, :email, :password, :remember_me)}
		devise_parameter_sanitizer.permit(:sign_in){ |a| a.permit(:email, :password, :remember_me)}
		devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :birthdate, :about, :email, :password])
	end

end
