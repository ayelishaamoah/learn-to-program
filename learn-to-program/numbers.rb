require 'date'
#how many hours are in a year?
hours_in_year = (365 * 24)
puts "There are #{hours_in_year} hours in a year"

#how many minutes are in a decade?
minutes_in_decade = (hours_in_year * 60) * 10
puts "There are `#{minutes_in_decade} minutes in a decade"

#how many seconds old are you?
date_of_birth = Date.parse("28/03/1991")
todays_date = Date.today

seconds_old = (todays_date - date_of_birth).to_i * (24 * 60 * 60)

puts "I am #{seconds_old} seconds old today"

#how many chocolates do you hope to eat in your life? 
chocolates_in_rest_of_lifetime = (52 * (80-27)) * 1
puts "I will probably eat #{chocolates_in_rest_of_lifetime} chocolates in the remainder of my lifetime"

#If I am 1298 million seconds old, how old am I?
age_in_seconds = 1298000000 
age = (age_in_seconds) / (365*24*60*60)
print "Your age is #{age}"
