class PromisesController < ApplicationController

	before_action :find_idea
	before_action :find_promise, only: [:edit, :update, :destroy]
	before_action :require_user, only: [:edit, :update, :destroy, :create]
		
	def show

	end
	
	def create
		@promise = @idea.promises.create(promise_params)
		@promise.user_id = current_user.id

		if @promise.save
			redirect_to idea_path(@idea)
		else 
			render 'new'
		end
	end
	
	def new
		@promise = @idea.promises.create	
	end
	
	def edit
		
	end

	def update
		if @promise.update(promise_params)
			redirect_to idea_path(@idea)
		else
			render 'edit'
		end
	end

	def destroy
		@promise.destroy
		redirect_to idea_path(@idea)
	end

	private
	
		def promise_params
			params.require(:promise).permit(:title, :description, :cost)
		end
	
		def find_idea
			@idea = Idea.find(params[:idea_id])
		end
	
		def find_promise
			@promise = @idea.promises.find(params[:id])
		end
		
		def require_user
			redirect_to root_path unless current_user == @idea.user or current_user.admin?
		end

	
end
