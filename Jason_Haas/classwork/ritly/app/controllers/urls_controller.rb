class UrlsController < ApplicationController

	def new
		@url = Url.new
	end

	def create
		safe_url_params = params.require(:url).permit(:link)
		@url = Url.new safe_url_params
		@url.hash_code = rand(1..100000)
		@url.save
		redirect_to @url
	end

	def show
		@url = Url.find params[:id]
	end

	def fail
	end


	def redirector
		@url = Url.find_by hash_code: params[:code]
		# puts @url.hash_code
		# puts "============================="
		if @url
			redirect_to @url.link
		else
			redirect_to home_fail_path
		end
	end

	def preview
		@url = Url.find_by hash_code: params[:code]
		unless @url
			redirect_to home_fail_path
		end
	end


end
