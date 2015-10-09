# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# 1. Initial Solution
def mode (array)
  #initialiaze a new hash
  numbers = Hash.new 0

  #make an array that we can use to store our biggest values (occurrences)
  biggest_array = []

#   iterate through that array and assign each new number to a hash key and then for each occurance of that unique number, we add 1 to the value of that key
  array.each do |item|
    numbers[item] += 1
  end

  #this will temporarily hold the value of the key with the most number of occurrances.
  #it is created by taking the numbers hash, sorting it by smallest to largest. reversing that order to give largest to smallest, then taking the very first (or in this case most occuring number)
  biggest_array = numbers.values.sort!.last

#   delete all other keys in the hash that have less occurances than the one with the most
  numbers.delete_if {|key, value| value < biggest_array}

#   return the numbers with the most occurances in an array
  numbers.keys
end

# 3. Refactored Solution




# 4. Reflection
# Which data structure did you and your pair decide to implement and why?
#   We wound up utilizing a mix of both hashes and arrays in order to get the necessary output. We initially used hashes to help map the array elements to the number of occurances, then isolated that data into hashes to manipulate it while keeping it tied to eachother
# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
#   Yes, I would say that we were, however my partner has all the psuedocode on his screen. It gave us a very good starting out point, and helped direct our research to a workable solution
# What issues/successes did you run into when translating your pseudocode to code?
#   Initially we tunnel-visioned on a pretty bad solution of trying to nest for loops. we wound up with countless errors and couldn't manipulate the data the way taht we wanted. Then we took a break and decided to do some research before joining back up. During that time, we came across ways of utilizing hashes to better suit our needs.
# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
#   we used the .each, the .keys, .values, .sort, .last, and .delete_if. The refactoring process was pretty ongoing so we didn't come across too many new ones outside those mentioned