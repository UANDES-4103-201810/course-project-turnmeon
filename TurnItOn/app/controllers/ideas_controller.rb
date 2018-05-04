class IdeasController < ApplicationController
	before_action :find_idea, only: [:show, :edit, :update, :destroy]
	
	def show
	end

	def index
		@ideas = Idea.all.order("created_at DESC")
	end

	def new
		@idea = current_user.ideas.build
	end

	def create
		@idea = current_user.ideas.build(idea_params)
	 	if @idea.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
	end	

	def update
		if @idea.update(idea_params)
			redirect_to idea_path
		else
			render 'edit'
		end
	end

	def destroy
		@idea.destroy
		redirect_to root_path
	end
	

	private

		def idea_params
			params.require(:idea).permit(:title, :description, :estimated_date, :goal_amount, :category)
		end
		
		def find_idea
			@idea = Idea.find(params[:id])
		end
end
