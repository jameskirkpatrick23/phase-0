# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode
# looking to create a similar die class to the previous one
# initialization takes in an array of strings as Input
# when Die.roll is called, you simply return one of the strings
# if nothing is passed in, then you return an argument error
# Input: array of strings
# Output: return one string
# # Steps: define initialization
#             takes in an array, and maps that array to a new temporary variable that we
            # can pass through to everything else
#           define what a side is
#             each string in the array should become a side
#           define how to roll between each side
#             take the labels array or possibly the sides definition and return a string


# Initial Solution

class Die
  def initialize(labels)
    #initialize sides so that when we check for a minimum number of arguments, we can do it
    @sides = labels.length
    #check to make sure that the minimum sides are there, or dont go further
    check_minimum_sides
    # make a new array that is an instance variable that we can pass into roll
    @array = []
    # map the passed in labels array to @array
    labels.each {|item| @array << item}
  end

  def sides
    #return the number of sides on the die
    @sides
  end

  def roll
    #make the returned roll equal to sample method for an array
    #sample method gets 1 random element from an array and returns it
    @roll = @array.sample
  end

  private
  def check_minimum_sides
    if @sides < 1
      raise ArgumentError.new ("Must have at least one side")
    end
  end

end

# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
  # Well, obviously, we needed to utilize strings on this version, and more immediately utilize arrays. It really didn't change too much of the logic in the challenge from the previous version, however it did add in a new wrinkle where we had to map the argument to an instance variable to change it.

# What does this exercise teach you about making code that is easily changeable or modifiable?
  # It shows that the more basic you make your code, and the DRYer it is, then the more you can apply to it without breaking the code

# What new methods did you learn when working on this challenge, if any?
  # I learned about the .sample method from array. I commented about it in my Solution

# What concepts about classes were you able to solidify in this challenge?
  # you neeeeeed instance variables, or your code will not work. found that out the hard way when I kept getting errors on trying to use labels in roll
