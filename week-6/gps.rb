# def serving_size_calc(item_to_make, order_quantity)
#   library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#   error_counter = 3

#   library.each do |food|
#     if library[food] != library[item_to_make]
#       p error_counter += -1
#     end
#   end

#     if error_counter > 0
#       raise ArgumentError.new("#{item_to_make} is not a valid input")
#     end

#     serving_size = library.values_at(item_to_make)[0]
#     serving_size_mod = order_quantity % serving_size

#     case serving_size_mod
#     when 0
#       return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
#     else
#       return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#     end
# end


# Your Names
# 1) James Kirkpatrick
# 2) Ovidio Calvo

# We spent [1] hours on this challenge.



#GOAL IS TO SEE HOW MANY MORE FOODS WE WILL NEED TO COOK IN ORDER TO FULFILL THE FOOD ORDER
# library states how many ingrdients are required to MAKE each type
# When you want to make a cookie. you give the program strging "cookie" in addition you give the number of resources you have available to make that thing.

# Bakery Serving Size portion calculator.

# leftover = {"cookie" => 0, "cake" => 0, "pie" => 1}

def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  if library.has_key?(item_to_make)

    serving_size = library.values_at(item_to_make)[0]
    leftovers = order_quantity % serving_size

    if leftovers == 0
      return "We can complete your order of #{order_quantity}, #{item_to_make}"
    else
      return "In order to complete your request, we had to make an extra #{item_to_make}, we will have #{leftovers} pieces left over for storage"
#       Suggested baking items: TODO: MAKE THIS FEATURE
#       if leftovers > 7
#         make a pie too
#       if > 5
#         make a cake
#       else
#         make x number of cookies
    end
  else
    raise ArgumentError.new("We dont need to make it")
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

# What did you learn about making code readable by working on this challenge?
# Making things as DRY as possibly is hugely important, as they are not only more readable but universally applicable for your program

# Did you learn any new methods? What did you learn about them?
# not really? I guess I learned about case. which was interesting as it is similar to if else statements. however I didn't really go into detail with it.

# What did you learn about accessing data in hashes?
# accessing the data in hashes is very similar to accessing it in an array, the only difference is how you choose to get at the information you want (hash or key) using [] or .fetch or whatever

# What concepts were solidified when working through this challenge?
# definitely the use of DRY code. when you can make your code understandable for everyone, it helps immensely when making new developments