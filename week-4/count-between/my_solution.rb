# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  # make an initial count
  count = 0
  #check to see if list is empty
  if list_of_integers.empty?
    #if so return 0
    return count
  #check to see if upper bound is bigger than lower bound
  elsif upper_bound < lower_bound
    #if so return 0
    return count
  end
  #iterate through list
  list_of_integers.each do |num|
    #if the number is equal to or between the boundaries, add one to the count
    if num >= lower_bound && num <= upper_bound
      count += 1
    end
  end
  #return the count
  return count

end