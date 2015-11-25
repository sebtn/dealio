class DealsController < ApplicationController

	def index
		@deals = Deal.all
	end	

	def new
		@deal = Deal.new
	end	

	def create
		Deal.create(deal_params) 
		redirect_to root_path
	end	

	private

  	def deal_params
    	params.require(:deal).permit(:sale, :description, :address)
  	end


end
