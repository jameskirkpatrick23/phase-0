# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below
# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below
=begin
def factorial(num)
  # product will be final answer
  product = 1
  # counter to iterate through num sequence
  counter = 1
  # check if numbe is greater than zero
  if num < 0
    return "Less than zero"
  else
  # counter is set to count up to num
    while counter <= num
      product *= counter
      counter += 1
    end
    return product
  end
end
=end

def factorial(num)
  if num <= 0
    return 1
  else
    num * factorial(num-1)
  end
end




# DRIVER TESTS GO BELOW THIS LINE






# Reflection

# The challenge seemed pretty reliant on knowing your built-in methods. I used has_key? for the first time, and I think if I had more time I would have looked up more methods before expanding the number accepted integer inputs. Overall, fun challenge, and I hope I can come back to it.