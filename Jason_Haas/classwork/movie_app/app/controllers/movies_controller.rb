class MoviesController < ApplicationController
	def index
		if params[:q]
			@my_movies = Movie.search_movie(params[:q])
		else
			@my_movies = Movie.all
		end
	end
end
