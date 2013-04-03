require 'date'

birthdate = 07-23-87

birth_in_seconds = Date.new(*birthdate).to_time.to_i
today_in_seconds = Date.today.to_time.to_i

age = today_in_seconds - birth_in_seconds

def earth_years(age)
  age / 31557600
end

def venus_years(age)
  age / 31557600 * 0.61519726 
end

age

puts earth_years(age)
puts venus_years(age)
