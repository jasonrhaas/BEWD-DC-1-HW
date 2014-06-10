class GetInput
	attr_accessor :menu_input, :query_input

	def initialize
	end

	def menu
		begin  # Keep prompting for input until criteria is met
			print "\nSelection -------> "
			@menu_input = gets.chomp 
			abort("Thanks for using the Party Crasher App!") if @menu_input =~ /q/i  # Regex!
		end until @menu_input =~ /[1-5]/   # Regex!
	end

	def query
		case @menu_input
		when '1'
			puts "Enter a category such as conferences, conventions, entertainment, fundraisers, etc."
			begin
				print "\nCategory -------> "
				@query_input = gets.chomp
			end until @query_input =~ /[a-zA-Z]+/  #  Poor attempt at checking for bad input
			@query_input.downcase!
		when '2'
			puts "Enter a city such as New York, Boston, etc."
			begin
				print "\nCity -------> "
				@query_input = gets.chomp
			end until @query_input =~ /[a-zA-Z]+/  #  Poor attempt at checking for bad input
			@query_input.downcase!
		when '3'
			puts "Enter a 2 letter state code such as NJ, CA, etc."
			begin
				print "\nState -------> "
				@query_input = gets.chomp
			end until @query_input =~ /[a-zA-Z]+/  #  Poor attempt at checking for bad input
			@query_input.downcase!
		when '4'
			puts "Enter a 5 digit zip code such as 07417."
			begin
				print "\nZip Code -------> "
				@query_input = gets.chomp
			end until @query_input =~ /[0-9]{5}/  #  Good error checking
		when '5'
			puts "Enter a start date in the format YYYY-MM-DD"
			begin
				print "\nDate -------> "
				@query_input = gets.chomp
			end until @query_input =~ /[0-2][0-9]{3}-[0-1][0-9]-[0-3][0-9]/  #  OK error checking, not perfect
		else
			puts "Something went wrong"
		end

	end
end