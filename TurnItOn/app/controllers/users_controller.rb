class UsersController < ApplicationController
  def show
	@user = User.find(params[:id])
	@user_ideas = @user.ideas
  end
end
