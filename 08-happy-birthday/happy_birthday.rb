# ask user to enter a year
# get year data
# ask user to enter a month
# get month data
# ask user to enter a day
# get day data

def year
  "What year were you born?"

def month
  "What month were you born?"
end

def day
  "What day were you born?"
end

def ask_year
  puts year
  reply1 = gets.chomp
end

def ask_month
  puts month
  reply2 = gets.chomp.downcase
end

def ask_day
  puts day
  reply3 = get.chomp
end

def age
  now = Time.now.utc.to_date
  years_old = now.year - birthday.year - (birthday.to_date.change(:reply1 => now.year) > now ? 1 : 0)
  puts "You are #{years_old} years old"
 end
end

initialize







