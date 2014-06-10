require 'eventbrite-client'
require 'json'

require_relative 'lib/display'
require_relative 'lib/get_input'
require_relative 'lib/load'
require_relative 'lib/print'

token = 'P4W3IXZTY5LIWBHGI6IL' # Token needed to access the API for Eventbrite

puts `clear`
puts "Welcome to the Party Crasher App!"
puts "This app lets you view which events are going on based on your inputs."

begin
	party = Display.new
	input = GetInput.new
	# input.menu
	input.query(party.menu_input)
	data = Load.new(token, input.menu_input, input.query_input)
	output = Print.new(data.response)
	output.to_s
end while 1 > 0   # Somewhat of a hack, but I ran out of time!