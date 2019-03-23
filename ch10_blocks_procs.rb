# Some other languages have this feature, though they may call it something else (like closures).
# Procs allow you to take a block of code (between 'do' and 'end') and wrap it up in an object (called a proc).
# This allows you to store it in a variable or pass it to a method, and run the code in the block whenever want to. 
# Similar to a method as they can also take parameters, except it isn't bound to an object - it is an object.
# Because procs are objects they have certain advantages over methods - you can pass them into methods and can be retrurned by methods
=begin
def profiler description, &block
  start_time = Time.now
  block.call
  end_time = Time.now
  
  runtime = (end_time - start_time).to_s
  puts "#{description} took #{runtime}s to run."
end

profiler "25000 doubler" do
  number = 1
  25000.times do
    number = number + number 
  end
  puts "#{number.to_s.length} digits"
end

profiler "count to one millionb" do
  number = 0
  1000000.times do
    number = number + 1 
  end
  puts "#{number.to_s}"
end

=end
# Grandfather Clock. 
# Write a method which takes a block and calls it once for each hour that has passed today. 
# That way, if I were to pass in the block do puts 'DONG!' end, it would chime (sort of) like a grandfather clock. 
# Test your method out with a few different blocks (including the one I just gave you). 
# Hint: You can use  Time.now.hour to get the current hour. 
# However, this returns a number between 0 and 23, so you will have to alter those numbers in order to get ordinary clock-face numbers (1 to 12).

def ticktock(&block)
    hours = Time.now.hour 
  if hours == 0
    hours = 12
  else
    hours = hours % 12
  end
  
  hours.times do
    block.call
  end
  
end

ticktock do 2.times { puts "DING!" } end
ticktock do puts "DONG!" end

=begin
Program Logger.
Write a method called log, which takes a string description of a block and, of course, a block. 
Similar to  doSelfImportantly, it should puts a string telling that it has started the block, 
and another string at the end telling you that it has finished the block, and also telling you what the block returned. 
Test your method by sending it a code block. Inside the block, put another call to log, passing another block to it. (This is called nesting.) 

Beginning "outer block"...
Beginning "some little block"...
..."some little block" finished, returning:  5
Beginning "yet another block"...
..."yet another block" finished, returning:  I like Thai food!
..."outer block" finished, returning:  false


def log description, &block
  puts "Beginning \"#{description}\"..."
  value = block.call
  puts "...\"#{description}\" finished, returning:#{value}"
end

log "outer block" do 
    log "some little block" do
        5
    end
    log "yet another block" do 
      "I like Thai food"
    end 
  false 
end
=end

$nest_level = 0
$spacing = " "
def betterLogger description, &block
  puts "#{$spacing * $nest_level}Beginning \"#{description}\"..."
  $nest_level += 1
  value = block.call
  $nest_level -= 1
  puts "#{$spacing * $nest_level}...\"#{description}\" finished, returning: #{value}"
end

betterLogger "outer block" do 
  
  betterLogger "first level block" do
    
    betterLogger "second level block" do 
      "hello there"
    end
    
    5
  end
  
  false
end