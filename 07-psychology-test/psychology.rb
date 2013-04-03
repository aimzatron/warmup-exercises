def question(variable)
  "Do you like watching #{variable}? "
end

def ask(question)
  while true
    puts question
    reply = gets.chomp.downcase
    if reply == "yes"||reply == "no"
      if reply == "yes"
        answer = true
      else reply == "no"
        answer = false
      end
      break
  else 
      puts "Please answer the question Yes or No"
    end
  end
  answer
end

puts "Hello and thank you for being a part of this survey"

ask question("true blood")
ask question("Star Trek")
ask question("Jersey Shore")
ask question("Battlestar Galactica")
ask question("Cheers")
are_you_in_love = ask "Are you in love?"
ask question("Deep Space Nine")
ask question("The Guild")
ask question("TMNT")
ask question("Firefly")
ask question("Sister, Sister")

puts 
puts are_you_in_love
