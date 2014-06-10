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

party = Display.new
party.start
input = GetInput.new
input.menu
input.query
data = Load.new(token, input.menu_input, input.query_input)

output = File.open("output.json")
output << data.response
output.close
# puts data.response
# data.response['events']['event'].each do |text|
# 	puts text['title']
# end
