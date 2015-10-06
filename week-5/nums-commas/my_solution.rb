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

# def separate_comma (integer)
#   #this makes a string of integer
#   temp_string = String(integer)
#   #should give us final index
#   num_commas = temp_string.length / 3
#   count = 1
#   # if decimal places are at 3, 6, 9, 12, 15, 18...
#   # feasibly, these indexes are 2, 5, 8, 11, 14, 17...
#   #then we want to put in a , before the next number
#   if integer > 999
#     while num_commas > 0
#       temp_string.insert(count, ',')
#       count += 4
#       num_commas -= 1
#       p temp_string
#     end
#   end
#   return temp_string
# end

# separate_comma(70000)


# def separate_comma (integer)
#   int_string = String(integer)
#   if integer <= 999
#     #3 decimal places
#     return int_string
#   elsif integer <= 9999
#     #4 decimal places
#     return int_string.insert(1, ',')
#   elsif integer <= 99999
#     #5 decimal places
#     return int_string.insert(2, ',')
#   elsif integer <= 999999
#     #6 decimal places
#     return int_string.insert(3, ',')
#   elsif integer <= 9999999
#     #7 decimal places
#     int_string.insert(1, ',')
#     int_string.insert(5, ',')
#     return int_string
#   elsif integer <= 99999999
#     #8 decimal places
#     int_string.insert(2, ',')
#     int_string.insert(6, ',')
#     return int_string
#   elsif integer <= 999999999
#     #9 decimal places
#     int_string.insert(1, ',')
#     int_string.insert(5, ',')
#     int_string.insert(9, ',')
#     return int_string
#   end
# end



# 2. Refactored Solution
#I have no idea actually how to refactor this. but I will keep trying throughout this week
def separate_comma (integer)
  #have to split up the integer into a string first, then into an array in reverse order
  temp_string = integer.to_s
  temp_array = temp_string.reverse!.split(//)
  #initialize where to put first comma
  comma = 3
  #make a maximum number the commas can count up to
  max = temp_string.length + 3
  #check to make sure you even need a comma
  if integer <= 999
    return temp_string
  else
    #while you can still put in commas, put one in every three
    while comma <= max
      #check to see if your next few characters are nil, if so you are done
      if temp_array[comma] != nil
        temp_array.insert(comma, ',')
      end
      comma += 4
    end
    #put the string back together, and reverse it again
    temp_string = temp_array.join
    return temp_string.reverse!
  end
end


# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?
My god this was a hard one for me. And I have no idea why. So to break the problem down I noticed that I needed a string as my final input, and to access the individual indexes, i would have to make it into an array. from there i wanted to reverse the number to make things easier to add commas. then it was just a matter of getting the initial position correct and adding up to get each new comma

Was your pseudocode effective in helping you build a successful initial solution?
I did a terrible job of psuedo-coding and I paid the price for it. Live and learn

What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
I used .split, .reverse, .join, .each, and a whole bunch of others. I had some difficulties in using .insert just due to my own failures in understanding how it worked. But they all did a specific purpose in letting me manipulate the number into the way i wanted it

How did you initially iterate through the data structure?
I just used a bunch of if statements. I couldn't figure out how to make it work for every case, so I just made an MVP that passed the given tests.

Do you feel your refactored solution is more readable than your initial solution? Why?
Readable.... maybe, but hey it works no matter what number it is given. I plan to refactor this more over the given week however right now I'm just happy it works.
=end