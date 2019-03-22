# Write the program we talked about at the very beginning of this chapter.
# Hint: There's a lovely array method which will give you a sorted version of an array:  sort. Use it!
# Try writing the above program without using the sort method. 
# A large part of programming is solving problems, so get all the practice you can!
# Rewrite your Table of Contents program (from the chapter on methods). 


# Let's write a program which asks us to type in as many words as we want (one word per line, continuing until we just press Enter on an empty line), 
# and which then repeats the words back to us in alphabetical order. OK?

words_array = []

while true 
  puts "please type a word"
  word = gets.chomp
  if word != ""
    words_array.push(word)
  else
    break
  end
end

puts words_array.sort

# Bubble sort algorithm ascending
# Keep walking through the array until no sorting is done
# Compare a pair of elements, if the left element is bigger than the right, swap them
# If not, swap them

new_words_array = []
while true 
  puts "please type a word"
  word = gets.chomp
  if word != ""
    new_words_array.push(word)
  else
    break
  end
end

# Simple method to read but inefficient - not scaleable. 
# This method sorts in place - relatively memory efficient
def bubble_sort(array)
  n = array.length - 1
  # This loop will run until it hits a break
  loop do
    swapped = false
    
    (n).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] =  array[i+1], array[i]
        swapped = true
      end
    end
    # swapped will be set to false if no swaps have been made
    # which means the array is sorted.
    break if swapped == false
  end
  array
end

puts bubble_sort(new_words_array)

# There are other sorting algorithms that scale more efficiently e.g merge sort but requires more code
# Merge sort is far more superior when dealing with large data sets - divide and conquer approach