class ShirtsController < ApplicationController
	def index
		if params[:q]
			@my_shirts = Shirt.search_shirt(params[:q])
		else
			@my_shirts = Shirt.all
		end
	end

	def new
		@my_shirts = Shirt.new
	end

	def create
		@my_shirts = Shirt.new(shirt_params)
		if @my_shirts.save
			redirect_to shirts_path
		else
			render 'new'
		end
	end

	def edit
		@my_shirts = Shirt.find(params[:id])
	end

	def update
		@my_shirts = Shirt.find(params[:id])
		if @my_shirts.save
			redirect_to shirts_path
		else
			render 'edit'
		end
	end

	private
	def shirt_params
		params.require(:shirt).permit(:name, :description)
	end
end
