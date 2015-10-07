# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
# Create a method my_array_finding_method that takes an Array and a letter as arguments and returns a new array of the words that contain that letter.

# Psuedocode
# Long Way
  # Break array into smaller strings
  # search substrings for single letter
  # if contains that letter then return that substring
  # repeat
# Short Way
  # Use select method
  # array.select {|item| item.include? thing_to_find}

  # GOT A REALLY ANNOYING FIXNUM ERROR. BASHED HEAD AGAINST WALL FOR 30 MINUTES WHEN ALL I HAD TO DO WAS .to_s GRRRRRRR


def my_array_finding_method(source, thing_to_find)
  # INITIAL SOLUTION
    # new_array = []
    # source.each do |item|
    #     new_array << item.to_s
    #   end
    # new_array.keep_if {|item| item.include? thing_to_find}
  #---------------------------------------------------------------
  #------------------------REFACTORED-----------------------------
  #---------------------------------------------------------------
  source.select {|item| item.to_s.include? thing_to_find}
end

# Create a method my_hash_finding_method that takes a Hash and number as arguments and returns a new array of pet names by age.
# Psuedocode
  #  looking to sort by values and return corresponding keys
  # probably use key(value) method
  # will need to iterate
# LONG WAY
  # make a new array
  # iterate through Hash
  # each hash value that matches thing to find, we push that key into the array
# SHORT WAY
  # short way could be
  # source.keys.has_value? thing_to_find

def my_hash_finding_method(source, thing_to_find)
  # INITIAL SOLUTION
    # new_array = []
    # source.each do |key, value|
    #   if value == thing_to_find
    #     new_array << key
    #   end
    # end
    # new_array
  #---------------------------------------------------------------
  #------------------------REFACTORED-----------------------------
  #---------------------------------------------------------------
  source.select{|key,value| value == thing_to_find}.keys

end

# Identify and describe the Ruby method(s) you implemented.
  # On the refactored methods I used .select, .include?, and .keys
  # .select allows you to select parts of the array or hash that have some parameter inside of the element. I utilize it here to single out the thing_to_find variable
  # the .include method allows me to tell the program to look and see if an individual element in an array has the character from thing_to_find
  # finally the .keys method allows me to return a temporary array of the keys that are left in a hash. because i use it after I have eliminated several possibilities from the initial hash, it allows me to just get the keys I want and return it
#-----------------------------------------------------------------------------------------

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#