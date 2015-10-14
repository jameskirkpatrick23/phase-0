#Attr Methods

# I worked on this challenge [by myself]

# I spent [1] hours on this challenge.

class NameData
  attr_reader :name
  def initialize
    @name = "Student"
  end
end

class Greetings
  def initialize
    @who_to_greet = NameData.new
  end
  def greet
    puts "Hello #{@who_to_greet.name}! How wonderful to see you today"
  end
end

greeting = Greetings.new
greeting.greet


# Reflection
# What are these methods doing?
# initially you are hard coding the default initialization to a set of attributes, then later on you are defining methods that allow the user to change those default attributes

# How are they modifying or returning the value of instance variables?
#by utilizing the method=(argument), you can change the values of instance variables

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# What changed between the last release and this release?
# the last release still utilized methods for printing instance variables. by having age as a readable object, you can essentially eliminate that unnecessary method for calling age

# What was replaced?
# the method for what_is_my_age

# Is this code simpler than the last?
# very much so, yes

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# What changed between the last release and this release?
# added the ability for the program to write to the attribute age, and therefore change it instead of just looking at it. this allowed us to delete the method for changing the age

# What was replaced?
# the method for changing the person's age

# Is this code simpler than the last?
# yes

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# What is a reader method?
#   a reader method is a method that allows the program to call that variable as a method for a class and return the value it is currently stored as

# What is a writer method?
#   a writer method, similar to a reader method, allows the program to call the variable as a method for a class, however it will not allow the user to see the value currently stored there

# What do the attr methods do for you?
#   they allow you to pass arguments through classes in simpler fashion than creating unnecessary methods

# Should you always use an accessor to cover your bases? Why or Why not?
#   No, because sometimes you don't want the rest of your program to have access to that information either in reading or in writing to the variable

# What is confusing to you about these methods?
#   Nothing is seriously confusing about it at this time, however I am sure that I will have more questions soon






