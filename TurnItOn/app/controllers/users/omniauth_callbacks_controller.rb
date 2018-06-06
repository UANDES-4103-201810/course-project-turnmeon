class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

	def facebook
		@user = User.find_for_facebook_oauth(request.env["omniauth.auth"])
		if @user.persisted?
			flash[:notice] = "You have signed in with Facebook"
			sign_in_and_redirect @user, :event => :authentication
		else
			redirect_to new_user_registration_url
		end

	end

end
