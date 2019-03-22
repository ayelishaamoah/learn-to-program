# In Ruby, classes are always written in capitals.
# Usually you'll write .new to create a new instance of that class - except for integers where you have to just write the integer

# You can extend classes by defining methods within them, this is also true for build in classes
# Instance variables are the variable that relate to a particular class object
# The initialize method allows you to set up each instance of a particular class in a certain way
# Whenver an object is created, the initialize method is called if one has been defined.
# any methods defined below "private" are internal to the object and can't be called from the object interface.

# Make an OrangeTree class. 
class OrangeTree
  def initialize
    @age = 0
    @orangeCount = 0
    @height_in_cm = 0
  end
  
  # height method which returns its height
  def height
    @height_in_cm
  end
  
  def age
    @age
  end
  
  # oneYearPasses method, which, when called, ages the tree one year and each year the tree grows taller 
  # Make sure that any oranges you don't pick one year fall off before the next year
  def oneYearPasses
    @age += 1
    @height_in_cm += 150
    if @age > 5
        @orangeCount = 20 * age
    end
    if @age > 20
      puts "The tree has died"
      exit
    end
  end
  
  # you should be able to countTheOranges (which returns the number of oranges on the tree)
  def countTheOranges
    if @orangeCount != 1
      "There are #{@orangeCount} oranges on the tree"
    else
      "There is #{@orangeCount} orange on the tree"
    end
  end
  
  def pickAnOrange
    if @orangeCount > 0
      @orangeCount -= 1
      puts "That was delicious"
    else
      puts "There are no more oranges left"
    end
  end
end