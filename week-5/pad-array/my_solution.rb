# Pad an Array

# I worked on this challenge [by myself, with: james kirpatrick]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# => array and a minimum size and a value
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?
# => Return the array with the extra padding if the array is smaller than the original size, or return the array.


# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
# push = min_size - array.length
#   if min_size < array.size
#     return array
#   else
#     for i in 1..push
#       array.push(value)
#     end
#     return array
#   end
# end

# def pad(array, min_size, value = nil) #non-destructive
# # temp_array = array + Array.new(min_size) { value }
#  temp_array = []
#  array.each {|x| temp_array << x}

#   if min_size < temp_array.size
#     return temp_array
#   else
#     push = min_size - temp_array.length
#     while push > 0
#       temp_array.push(value)
#       push -= 1
#     end
#     return temp_array
#   end
# end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive

  push = min_size - array.length

    if min_size < array.size
      array
    else
      for i in 1..push
        array.push(value)
      end
      array
    end
end

def pad(array, min_size, value = nil) #non-destructive
# temp_array = array + Array.new(min_size) { value }
 temp_array = []
 array.each {|x| temp_array << x}
 push = min_size - temp_array.length

  if min_size < temp_array.size
      temp_array
  else
    for i in 1..push
      temp_array.push(value)
    end
    temp_array
  end
end


# 4. Reflection
=begin

Were you successful in breaking the problem down into small steps?
  Yes I believe that we were. Things went well in the beginning as we were able to complete the destructive method quickly. We ran into problems however when we attempted to use the non-destructive method, as we misunderstood how to go about creating a temporary array

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
  Yes we were able to translate it pretty easily, and as for successes and difficulties, see previous question

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
  Yes it was. I believe it is because we made sure (after countless trial and errors) to make a new array then push the old values into the new array rather than just assigning it to be the old array

When you refactored, did you find any existing methods in Ruby to clean up your code?
How readable is your solution? Did you and your pair choose descriptive variable names?
  We attempted to use the .new method to call a new instance of an array, then add the values of the old array all in one line, however that didn't seem to work. Our solution is very readable, and I believe that we chose appropriate variable names

What is the difference between destructive and non-destructive methods in your own words?
  Destructive methods change the value that is passed into the method as an argument. Non-destructive methods do not change anything about the argument that is given to the method, and instead return a new instance of a similar class
=end