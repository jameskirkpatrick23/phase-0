# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? input is an integer
# What is the output? (i.e. What should the code return?) a string that includes the integer and associated commas
# What are the steps needed to solve the problem?
# take in integer
# convert to string
# iterate through string
# insert comma before every fourth number
# change back to integer? and return.

# while count > 0
#   if count % 4 = 0
#     insert comma

#     9
# "INSERTS COMMA"
#     8
#     7
#     6
# "INSERTS COMMA"
#     5
#     4
#     3
# "INSERTS COMMA"
#     2
#     1
#     0
###MUST RETURN A STRING

# 1. Initial Solution

def separate_comma (integer)
  #this makes a string of integer
  temp_string = String(integer)
  count = temp_string.length

  while count > 0
    if count % 3 == 0
      temp_string.insert(, ',')
    end
    count -= 1
    p count
    p temp_string
  end

  # if count < 4
  #   return temp_string
  # else
  #   return temp_string.insert(-4, ',')
  # end
end
#   while count >= 0
#     temp_array.push("3")
#     count -= 1
#   end
#   p temp_array
# end

separate_comma(9876543210)

# 2. Refactored Solution




# 3. Reflection