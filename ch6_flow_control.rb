# Chapter 6: Flow control
# Allows you to increase the interactivity to your program

# Write a program which prints out the lyrics to that beloved classic, that field-trip favorite: "99 Bottles of Beer on the Wall."

bottles = 99

while bottles > 0
  puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer."
  bottles -= 1
  puts "Take one down and pass it around, #{bottles} bottles of beer on the wall."
  if bottles == 0 
      puts "No more bottles of beer on the wall, no more bottles of beer. \nGo to the store and buy some more, 99 bottles of beer on the wall."
  end
end

# Write a Deaf Grandma program. 
# Whatever you say to grandma (whatever you type in), she should respond with  HUH?!  SPEAK UP, SONNY!, unless you shout it (type in all capitals). 
# If you shout, she can hear you (or at least she thinks so) and yells back, NO, NOT SINCE 1938! 
# To make your program really believable, have grandma shout a different year each time; maybe any year at random between 1930 and 1950.

while true
  input = gets.chomp
  if input == "BYE"
      break
  elsif input != input.upcase
      puts "HUH?!  SPEAK UP, SONNY!"
  elsif input == input.upcase
      puts "NO, NOT SINCE #{rand(1930..1950)}!"
  end
end

# Leap Years. 
# Write a program which will ask for a starting year and an ending year, 
# and then puts all of the leap years between them (and including them, if they are also leap years). 
# Leap years are years divisible by four (like 1984 and 2004). 
# However, years divisible by 100 are not leap years (such as 1800 and 1900) unless they are divisible by 400 (like 1600 and 2000, which were in fact leap years). 
puts "Which year would you like to start at?"
start_year = gets.to_i

puts "Which year would you like to finish at?"
end_year = gets.to_i

(start_year..end_year).each do |year|
  if year % 4 == 0 && year % 100 != 0
    puts year
  end
  if year % 400 == 0
    puts year
  end
end