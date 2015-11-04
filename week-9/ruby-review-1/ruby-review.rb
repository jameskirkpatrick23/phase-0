# PezDispenser Class from User Stories

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.

# Cherry
# Chocolate
# Cola
# Grape
# Lemon
# Mango
# Orange
# Peppermint
# Raspberry
# Strawberry
# Raspberry-Lemon
# Strawberry-Vanilla

# Pseudocode
=begin

DEFINE a method initialize that takes an array of strings "flavors" as an argument
  SET instance variable "flavors" equal to array of length 12

DEFINE a method pez_count
  RETURN length of "flavors"

DEFINE a method get_pez
  DELETE and RETURN last element from flavors

DEFINE a method add_pez that takes a string "flavor" as argument
  INSERT flavor as last element in flavors

DEFINE a method see_all_pez
  PRINT each element in array starting from the end of the array

=end


# Initial Solution

# class PezDispenser
#   def initialize(flavors)
#     @flavors = flavors
#   end

#   def pez_count
#     @flavors.length
#   end

#   def get_pez
#     @flavors.pop
#   end

#   def add_pez(flavor)
#     @flavors.push(flavor)
#   end

#   def see_all_pez
#     puts @flavors.reverse
#   end
# end



# Refactored Solution

class PezDispenser
  def initialize(flavors)
    @flavors = flavors
  end

  # returns number of tablets in dispenser
  def pez_count
    @flavors.length
  end

  def get_pez
    #looking to take a pez out of the container, so we remove it form the array and return it to the user
    @flavors.pop
  end

  def add_pez(flavor)
    #allows the user to put in a new pez tablet with the flavor of their choice
    @flavors.push(flavor)
  end

  def see_all_pez
    #     prints out the curent number of pez and their flavors
    puts @flavors.reverse
  end
end




# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# Reflection
# What concepts did you review in this challenge?
# mostly just class methods and creating code and psuedocode from user stories

# What is still confusing to you about Ruby?
# challenge went very well, no real problems today

# What are you going to study to get more prepared for Phase 1?
# continuing to improve my psuedocoding