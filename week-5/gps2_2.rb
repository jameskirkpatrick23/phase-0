# Create a new list
# create a new hash
def new_list ()
  Hash.new ()
end

# Add an item with a quantity to the list
# define the method
# add_list (item, quantity)
def add_list (hash, item, quantity)
  hash[item] = quantity
end

# Remove an item from the list
def remove_item( hash, item)
 hash.delete(item)
end

# Update quantities for items in your list
#reassign value of a key
def update_quantities (hash, item, quantity)
 hash[item] = quantity
end

# Print the list (Consider how to make it look nice!)
#print the hash to the screen on its own line
def print_list (hash)
  puts hash
end

# grocery_list = new_list()
# add_list(grocery_list, "Lemonade", 2)
# add_list(grocery_list, "Tomatoes", 3)
# add_list(grocery_list, "Onions", 1)
# add_list(grocery_list, "Ice Cream", 4)
# remove_item(grocery_list, "Lemonade")
# update_quantities(grocery_list,"Ice Cream", 1)
# print_list(grocery_list)

=begin
What did you learn about pseudocode from working on this challenge?
  I learned that if you can work out the basics of a problem before going into the code itself, you have a better chance of coming out with what you want
What are the tradeoffs of using Arrays and Hashes for this challenge?
  We did not use arrays for this challenge, as hashes let us mess with the keys and variables
What does a method return?
  It returns what you tell it to with a return statement, or the last command it is given
What kind of things can you pass into methods as arguments?
  you can pass in integers, floats, strings, arrays, hashes, and other methods
How can you pass information between methods?
  call the method inside of the other method
What concepts were solidified in this challenge, and what concepts are still confusing?
  basic hash knowledge was solidified, namely adding to and modifying a hash's contents
end