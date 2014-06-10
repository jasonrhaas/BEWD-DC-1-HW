require 'eventbrite-client'

class Load
	attr_accessor :token, :menu_input, :query_input

	def initialize(token, menu_input, query_input)
		@menu_input = menu_input
		@query_input = query_input
		eb_client = EventbriteClient.new({ access_token: token})

		case @menu_input
		when '1'
			@response = eb_client.event_search("category=#{@query_input}")
		when '2'
			@response = eb_client.event_search("city=#{@query_input}")
		when '3'
			@response = eb_client.event_search("region=#{@query_input}")
		when '4'
			@response = eb_client.event_search("postal_code#{@query_input}")
		when '5'
			@response = eb_client.event_search("date=#{@query_input}")
		else
			puts "Something went wrong."
		end
	end

	def to_s
		
end
