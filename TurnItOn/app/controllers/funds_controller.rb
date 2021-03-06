class FundsController < ApplicationController
	before_action :find_idea
	before_action :find_fund, only: [:destroy]
	before_action :authenticate_user!
	before_action :require_user, only: [:destroy]

	def new
	    @fund = Fund.new
	end

	def create
		@fund = @idea.funds.create(fund_params)
		@fund.user_id = current_user.id

		if @fund.save
			FundMailer.fund_confirmation(@fund, current_user).deliver_now
			@idea.funded += @fund.amount
			@idea.save
			redirect_to idea_path(@idea), notice: 'You have funded this idea succesfully! Please confirm this fund!'
		else
			redirect_to idea_path(@idea), notice: 'Your funding must be at least 1 dollar!'

		end
	end
	
	def confirm_mail
		@pid = params[:f_id]
   		fund = Fund.find_by_confirm_token(params[:id])
		if fund
			fund.email_activate
			flash[:success] = "Thanks for funding this idea!"
			redirect_to root_url
		else
			flash[:success] = "Thanks for funding this idea!"
		end
	end
	
	def destroy
		@idea.funded -= @fund.amount
		@idea.save
		@fund.destroy
		
		redirect_to idea_path(@idea), notice: 'You have undone your funding! :('

	end

	private
		def fund_params
			params.require(:fund).permit(:amount)
		end

		def find_idea
			@idea = Idea.find(params[:idea_id])
		end
		def find_fund
			@fund = @idea.funds.find(params[:id])
		end
		def require_user
			redirect_to root_path, notice: 'You shall not pass!' unless current_user == @fund.user or current_user.admin?
		end
end
