class MessagesController < ApplicationController
	before_action :find_idea
	before_action :find_message, only: [:edit, :update, :destroy]
	before_action :authenticate_user!
	before_action :require_user, only: [:edit, :update, :destroy]

	def create
		@message = @idea.messages.create(message_params)
		@message.user_id = current_user.id

		if @message.save
			redirect_to idea_path(@idea), notice: 'Your message has been created!'
		else
			render 'new'
		end
	end
	
	def edit
	end

	def update
		if @message.update(message_params)
			redirect_to idea_path(@idea), notice: 'Your message has been updated!'
		else
			render 'edit'
		end
	end
	
	def destroy
		@message.destroy
		redirect_to idea_path(@idea), notice: 'Your message has been deleted!'

	end

	private
		def message_params
			params.require(:message).permit(:content)
		end

		def find_idea
			@idea = Idea.find(params[:idea_id])
		end
		def find_message
			@message = @idea.messages.find(params[:id])
		end
		def require_user
			redirect_to root_path, notice: 'You shall not pass!' unless current_user == @message.user or current_user.admin?
		end
end
