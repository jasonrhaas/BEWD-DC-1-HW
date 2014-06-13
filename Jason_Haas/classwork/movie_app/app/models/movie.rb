class Movie < ActiveRecord::Base
	def self.search_movie(param)
		where("title LIKE :query OR description LIKE :query", query: "%#{param}%")
	end
end
