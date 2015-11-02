# I worked on this challenge [by myself].
# This challenge took me [1] hours.

# # Pseudocode
# looking to ultimately create a function that simply returns bool data on if number is in sequence or not.
# the entirety of the equation is such:
# F sub n = F sub n -1 + F sub n - 2
# or in short, it is the sum of the previous two fibonacci numbers


# Initial Solution
require 'bigdecimal'
# had a really big problem in using big numbers. looked online and they mentioned that you could make it into a bigdecimal which uses arbitrary precision arithemetic to calculate instead of the float problems

def is_fibonacci?(num)
  # so just about everywhere I have looked mentioned that the only way to tell if a fibonacci number is in fact a fibonacci number, is to check if the solution to the following equation is a perfect square or not
  num = BigDecimal.new(num)
  return (5 * num**2 + 4).sqrt(0) == (5 * num**2 + 4).sqrt(0).round || (5 * num**2 - 4).sqrt(0) == (5 * num**2 - 4).sqrt(0).round
end



# # Refactored Solution
# really didn't work too well here
# def is_fibonacci?(num)
#   fibs = Hash.new{ |h,k| h[k] = ( k<=2 ? 1 : h[k-2] + h[k-1] ) }
#   fibs.has_value?(num)
#   # p fibs[num]  #=> instant result of Fibonacci!
# end
# # try using hashes to maybe see if the whole thing works this way. would be cool right?

# p is_fibonacci?(22)




# Reflection
# What concepts did you review or learn in this challenge?
# well, i learned that floating points dont work so well on reaaaaally big numbers, and that ruby has built in data structures to accomodate that

# What is still confusing to you about Ruby?
# not too much. it is pretty straightforward

# What are you going to study to get more prepared for Phase 1?
# more syntax, and definitely more methods