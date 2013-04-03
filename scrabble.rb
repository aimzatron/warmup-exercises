class Scrabble
    
    def self.score(input)
		parsed_input = input.upcase.split("")
		scores = letters.collect {|letter| lookup(letter)}
		scores.sum	
		scores.inject(0){|accumulator, value| accumulator + value}
	end

	def lookup(letter)
		"A" "E" "I" "O" "U" "L" "N" "R" "S" "T" = ones
		"D" "G" = twos
		"B" "C" "M" "P" = threes
		"F" "H" "V" "W" "Y" = fours
		"K" = fives
		"J" "X" = eights
		"Q" "Z" = tens
		
	end
end


