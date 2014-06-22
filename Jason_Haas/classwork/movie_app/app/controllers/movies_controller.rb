class MoviesController < ApplicationController
	  before_action :load_movie, only: [:update, :edit, :show]

	def index
		if params[:q]
			@my_movies = Movie.search_movie(params[:q])
		else
			@my_movies = Movie.all
		end
	end

	def new
		@my_movie = Movie.new
	end

	def create
		@my_movie = Movie.new safe_movie_params

		if @my_movie.save
			redirect_to @my_movie
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @my_movie.update(safe_movie_params)
			redirect_to @my_movie
		else
			render 'edit'
		end
	end

	def show
		# @my_movie = Movie.find params[:id]
	end

	def delete
		p test
	end

	private
		
		def load_movie
			@my_movie = Movie.find params[:id]
		end

		def safe_movie_params
			params.require(:movie).permit(:title, :description, :year_released, :rating)
		end
end
