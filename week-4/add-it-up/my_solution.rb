
# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array
# Output: total/sum of all numbers
# Steps to solve the problem.

#define the method
#initialize some local variables such as total and a counter
#iterate through the array and add the numbers to total
#return the total

# 1. total initial solution
=begin
def total (array)
  sum = 0
  array.each do |num|
    sum += num
  end
  return sum
end
=end


# 3. total refactored solution
#it will pick the first item in the array, it will then add it to the next and so on until theres nothing left
def total (array)
  array.inject {|sum, n| sum + n}
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings
# Output: concetenated string (sentence)
# Steps to solve the problem.
#define method
#take in array
#iterate through array
#print entire array

# 5. sentence_maker initial solution
=begin
def sentence_maker (array)
  sentence = ""
  array.each do |words|
    sentence += words.to_s
    sentence += " "
  end
  return sentence.capitalize.sub(/\s$/, ".")
end
=end

# 6. sentence_maker refactored solution

def sentence_maker (array)
 array.join(" ").capitalize + "."
end




