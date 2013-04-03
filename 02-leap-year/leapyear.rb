class Year

puts "Please enter a year: "

i = gets.to_i

def leap_4
	if i % 4 == 0
 	end
end 

	def leap?
		if leap_4 % 100 == 0
			puts "nil"
		elsif leap_4 % 400 == 0
			puts "nil"
		end
	end
end