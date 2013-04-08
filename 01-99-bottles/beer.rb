class Beer

  def self.song
    (99..2).each_with_index do |num, index|
   "bottles of beer on the wall, #{num} bottles of beer. 
     take one down pass it around, #{num - 1} bottles of beer on the wall"
    end

      # puts "Two bottles of beer on the wall, two bottles of beer, take one down 
      # pass it around, one bottle of beer on the wall. One bottle of beer on the 
      # wall one bottle of beer, take one down pass it around, zero bottles of 
      # beer on the wall!"

  end

end


