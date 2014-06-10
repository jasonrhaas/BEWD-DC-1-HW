class Print
	attr_accessor :data

	def initialize(data)
		@data = data
		@data["events"].shift  # Shift off the first item in the array since its just a summary
		@data_hash = {}
		@data_array = []
		@data["events"].each do |item|
			title = item["event"]["title"]
			start_date = item["event"]["start_date"]
			name = item["event"]["venue"]["name"]
			address = item["event"]["venue"]["address"]
			city = item["event"]["venue"]["city"]
			region = item["event"]["venue"]["region"]
			latlong = item["event"]["venue"]["Lat-Long"]
			@data_hash = {title: title, start_date: start_date, name: name, address: address, city: city, region: region, latlong: latlong}
			@data_array << @data_hash
		end
	end

	def to_s
		@data_array.each do |info|
			print "\n"
			puts "Title: #{info[:title]}"
			puts "Start date: #{info[:start_date]}"
			puts "Name: #{info[:name]}"
			puts "Address: #{info[:address]}"
			puts "City: #{info[:city]}"
			puts "Region: #{info[:region]}"
			puts "Coordinates: #{info[:latlong]}"
		end
		# Display.new  # Go back to the beginning
	end

end