class IdeasController < ApplicationController
	before_action :find_idea, only: [:show, :edit, :update, :destroy, :favourite]
	before_action :authenticate_user!, except: [:index, :show, :aboutus]
	before_action :require_user, only: [:edit, :update, :destroy]
	
	def show
	end

	def aboutus
	end

	def index
		if params[:category].blank?			
			@ideas = Idea.all.order("created_at DESC")
		else
			@category_id = Category.find_by(name: params[:category]).id
			@ideas = Idea.where(:category_id => @category_id).order("created_at DESC")
		end

	end

	def profile
		@ideas = Idea.all.order("created_at DESC")
	end

	def new
		@idea = current_user.ideas.build
		@categories = Category.all.map{|k| [k.name, k.id]}
	end

	def create
		@idea = current_user.ideas.build(idea_params)
		@idea.category_id = params[:category_id]
	 	if @idea.save
			redirect_to root_path, notice: 'Your Idea has been created!'
		else
			render 'new'
		end
	end

	def edit
		@categories = Category.all.map{|k| [k.name, k.id]}	
	end	

	def update
		if @idea.update(idea_params)
			redirect_to idea_path, notice: 'Your Idea has been updated!'
		else
			render 'edit'
		end
	end

	def destroy
		@idea.destroy
		redirect_to root_path, notice: 'Your Idea has been deleted!'
	end
	
	def favourite
		current_user.favourite_ideas.manage(@idea)
		redirect_to idea_path, notice: 'You liked this idea!'
	end
	

	private

		def idea_params
			params.require(:idea).permit(:title, :description, :estimated_date, :goal_amount, :category_id, :idea_image)
		end
		
		def find_idea
			@idea = Idea.find(params[:id])
		end
		
		def require_user
			redirect_to root_path, notice: 'You shall not pass!' unless current_user == @idea.user or current_user.admin?
		end
end
