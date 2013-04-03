grandma = Object.new

def grandma.hey something
  if something.upcase == "BYE"
    abort
  elsif something.upcase == something
    puts "NO, NOT SINCE #{ rand(1930..1950) }!"
  else
    puts "HUH? SPEAK UP"
  end

end

loop{grandma.hey gets.chomp}
