# I worked on this challenge [Deanna Warren, James Kirkpatrick ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 digits integer
# Output: boolean
# Steps:

# CLASS
# initialize class with argument 16 integer
#   check that for length, if not 16, raise error
# run validate


# generate list
#     of single digits from CC number

# double each even-index
#     number (and 0)
#     0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
#     make all numbers single digit (ie 12 becomes 1 , 2)

# sum of all

# IF sum modulus 10 = 0
#       valid number


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard

  def initialize(number)
    @number = number
    if number.to_s.length != 16
     raise ArgumentError, "That is not a valid length"
   end
  end

  def make_array
    #makes an array of each digit in our integer
    @list = @number.to_s.split(//)
    #iterate through our array
    @list.each do |int|
      #inside our list, we want to access the index           of int so we can change it, we do NOT want to         just call @list[int].
      @list[@list.index(int)] = int.to_i
    end
  end

  def double_evens
    #iterate through the list
    counter = 0
    @list.each do |digit|
      #if you reach a digit that has an index of an           even number or 0
      if counter % 2 == 0 || counter == 0
        @list[counter] *= 2
      end
      counter +=1
    end
  end

  def isolate_double_digits
    counter = 0
    16.times do
      if @list[counter] > 9
        @list[counter] = @list[counter] % 10 +1
      end
      counter += 1
    end
  end

  def sum_all
    counter = 0
    @sum = 0
    16.times do
      @sum += @list[counter]
      counter +=1
    end
     @sum
  end

  def check_card
    self.make_array
    self.double_evens
    self.isolate_double_digits
    p self.sum_all % 10 == 0
  end

end

# What was the most difficult part of this challenge for you and your pair?
# The most difficult part was in figuring out how the arrays were counting up or down on their indexes when we attempted to modify them. ultimately we were able to figure it out though.

# What new methods did you find to help you when you refactored?
# We utilized the .each and the .times to be the most useful

# What concepts or learnings were you able to solidify in this challenge?
# The concepts solidified were specifically based around class methods and passing through information between methods. It was a good challenge to help