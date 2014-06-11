class ShirtsController < ApplicationController
	def index
		@my_shirts = Shirt.all
	end
end
