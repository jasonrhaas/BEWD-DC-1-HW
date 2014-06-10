class Display

	attr_accessor :menu_input

	def initialize
		print "\n-----------------------------------\n"
		puts "How would you like to find parties?"
		puts "1.  Category"
		puts "2.  City"
		puts "3.  Region"
		puts "4.  Postal code"
		puts "5.  Event start date"
		print "\n-----------------------------------"

		print "\nOr enter 'q' to quit\n"

		begin  # Keep prompting for input until criteria is met
			print "\nSelection -------> "
			@menu_input = gets.chomp 
			abort("Thanks for using the Party Crasher App!") if @menu_input =~ /q/i  # Regex!
		end until @menu_input =~ /[1-5]/   # Regex!
	end
end