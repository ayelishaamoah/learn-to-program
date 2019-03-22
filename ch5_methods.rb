# Chapter 5: More About Methods

# Methods that we have covered so far...
# - Conversion methods,  to_i, to_f, and to_s. 
# - Arithmetic operators +,  -, *, and /

# String methods
string = "hello"
# The bang (!) method alters the original object in its place
string.reverse!
puts string

string.reverse
puts string # This outputs "olleh"

puts string.length

word = "SuperCaliFragilisticExpialidocious"
puts "Word in all caps: #{word.upcase}" 
puts "Word in all lowercase: #{word.downcase}"
puts "Reversed case: #{word.swapcase}"
puts "Capitalized word: #{word.capitalize}" # capitalize only capitalizes the first character 

# Exercises

# Write an Angry Boss program. 
# It should rudely ask what you want. Whatever you answer, the Angry Boss should yell it back to you, and then fire you. 
# For example, if you type in I want a raise., it should yell back WHADDAYA MEAN "I WANT A RAISE."?!?  YOU'RE FIRED!!

puts "What do you want?"
input = gets.chomp

puts "WHADDAYA MEAN \"#{input.upcase}.\"?!? YOU'RE FIRED!!"

# Number methods
# Rand generates a random number

puts rand # generates a random number >= 0 and < 1
puts rand(100) # generates a random number >= 0 and < 100

# Math object - gives you the functionality of a scientific calculator
puts(Math::PI)
puts(Math::E)
puts(Math.cos(Math::PI/3))
puts(Math.tan(Math::PI/4))
puts(Math.log(Math::E**2))
puts((1 + Math.sqrt(5))/2)