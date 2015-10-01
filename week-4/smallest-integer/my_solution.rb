# Smallest Integer

# I worked on this challenge [by myself].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def smallest_integer(list_of_nums)
  #initialize temp number as the first number in the array
  temp_smallest = list_of_nums[0]
 #if the list is empty return nil
  if list_of_nums.empty?
      return nil
  else
    #iterate through the array
    list_of_nums.each do |num|
      #if the current number is less than the number that was the previous smallest, replace it and continue
      if num < temp_smallest
        temp_smallest = num
      end
    end
    #return the smallest number
    return temp_smallest
  end
end