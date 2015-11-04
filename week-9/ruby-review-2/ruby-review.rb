# U2.W6: Testing Assert Statements

# I worked on this challenge [with: Steve Broderick].


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" } # => true
# assert { name == "billybob" } # => false

# 2. Pseudocode what happens when the code above runs

# IF block evaluates to true
#   DO nothing
# IF block evaluates to false
#   RAISE error

# 3. Copy your selected challenge here

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
    p @flavors.reverse
  end
end


# 4. Convert your driver test code from that challenge into Assert Statements
flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)


def assertInitialize
  raise "Incorrect number of pez given to dispenser" unless yield
end

assertInitialize{super_mario.pez_count == flavors.length} # => true
# assertInitialize{super_mario.pez_count != flavors.length} # => false

def assertGetPez
  raise "No Pez was gotten from dispenser" unless yield
end

assertGetPez {
  a = super_mario.pez_count
  super_mario.get_pez
  b = super_mario.pez_count
  a > b
  } # => true

# assertGetPez {
#   a = super_mario.pez_count
#   super_mario.get_pez
#   b = super_mario.pez_count
#   a <= b
#   } # => false

def assertAddPez
  raise "No Pez was added to dispenser" unless yield
end

assertAddPez {
  a = super_mario.pez_count
  super_mario.add_pez("banana")
  b = super_mario.pez_count
  a < b
  } # => true

# assertAddPez {
#   a = super_mario.pez_count
#   super_mario.add_pez("banana")
#   b = super_mario.pez_count
#   a >= b
#   } # => false

# puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"

def assertPezCount
  raise "pez_count did not return an integer" unless yield
end

assertPezCount { super_mario.pez_count.is_a? Integer} # => true
# assertPezCount { !super_mario.pez_count.is_a? Integer} # => false


# puts "Here's a look inside the dispenser:"
# puts super_mario.see_all_pez

def assertSeeAllPez
  raise "see_all_pez did not return an array" unless yield
end

assertSeeAllPez { super_mario.see_all_pez.is_a? Array} # => true
# assertSeeAllPez { !super_mario.see_all_pez.is_a? Array} # => false


# puts "Adding a banana pez."
# super_mario.add_pez("banana")
# puts "Now you have #{super_mario.pez_count} pez!"
# puts "Oh, you want one do you?"
# puts "The pez flavor you got is: #{super_mario.get_pez}"
# puts "Now you have #{super_mario.pez_count} pez!"



# 5. Reflection
# What concepts did you review in this challenge?
# test driven development and changing driver code

# What is still confusing to you about Ruby?
# things seemed to work out well, i am sure I will have more questions in the future, but for now I am satisfied in my knowledge

# What are you going to study to get more prepared for Phase 1?
# I will certainly look more into assert statements and tdd in general