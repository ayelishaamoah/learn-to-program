#we often have different data types that we need to use together.
#Implicit conversion allows us to do this automatically but this won't always work
var1 = "5"
var2 = 2

puts var1 * var2
# This will work as the computer will just print the string the specified number of times

var1 = 2
var2 = '5'

# puts var1 + var2 > String can't be coerced into Integer (TypeError)
# This won't work as the computer isn't sure what you want - you need to explicitly convert the integer

var1 = 2
var2 = '5'

puts var1.to_s + var2

# other conversions include .to_i , .to_f , .to_a - which will convert to an integer, float or array.

puts 20
puts 20.to_s
puts '20'

# on a computer screen they all look the same. Using puts converts the object to a string - puts really means put string.

puts "Whats your name"
name = gets.chomp # gets adds a newline when you type input and press enter - chomp removes the newline after the input
puts "hello " + name + ", how are you?"

#Exercises

puts "Hello, what is your first name?"
first_name = gets.chomp
puts "Hello, what is your middle name(/s) if you have one?"
middle_name = gets.chomp
puts "Hello, what is your last name?"
last_name = gets.chomp
puts "Hello #{first_name} #{middle_name} #{last_name}"

puts "Hello, what is your favourite number?"
fav_number = gets.chomp.to_i
puts "What about #{fav_number +1}, this could be a better favourite number"
