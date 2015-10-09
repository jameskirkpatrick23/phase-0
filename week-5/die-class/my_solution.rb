# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# 0. Pseudocode
  # Initialize
  #   want to take in a given number of sides and return a new instance of the class die with that number of sides
  # Sides
  #     returns the number of sides on the die that you are rolling
  # Roll
  #     returns a random number between 1 and the number of sides that are on the die.
  #     rand(1-sides or something)

# Input:
# Output:
# Steps:


# 1. Initial Solution

class Die
  def initialize(sides)
    #instance variable
    @sides = sides
    check_minimum_sides
  end

  def sides
    # code goes here
    @sides
  end

  def roll
    # code goes here
    @roll = 1 + rand(@sides)
  end

  private

  def check_minimum_sides
    if @sides < 1
      raise ArgumentError.new ("Must have at least one side")
    end
  end

end



# 3. Refactored Solution
  # Really not sure what I could even refactor here that would make sense. Just about everything is DRY


# 4. Reflection

# What is an ArgumentError and why would you use one?
  # An argument error is an error that is thrown when the arguments passed into a method do not fall inside the requirements needed to run the method. You could use one to alert the user that they need to change their input prior to running that aspect of the program

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
  # Well I certainly learned some new things about implementing classes, and utilizing instance variables to help create the correct output when making a new class. Furthermore, I got some practice in creating a new argument error which was pretty cool

# What is a Ruby class?
  # A ruby class is a subset of objects that a user can create in order to pass along a set of methods and characteristics to any new instance of that class they want to make.

# Why would you use a Ruby class?
  # You could use a ruby class to define a general category of objects that share certain variables, and that you want to have certain methods that you can call on them, rather than having to re-type in each method for every instance

# What is the difference between a local variable and an instance variable?
  # A local variable is a variable used only within a method and is destroyed after use. An instance variable will remain with that particular instance of a class throughout its existence, and can be modified accordingly

# Where can an instance variable be used?
  # An instance variable can be used within the definition of a class method