# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 1
# ============================================================
p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 1
# ============================================================
p hash [:outer] [:inner] ["almost"] [3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 1
# ============================================================
p nested_data [:array] [1] [:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |element|
  if element.kind_of?(Array)
    element.map! {|item| item += 5 }
  else
     element += 5
  end
end

p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

def change_name (array)
  array.map! do |element|
    if element.kind_of?(Array)
      change_name(element)
    else
      element += "ly"
    end
  end
  array
end

p change_name(startup_names)


# REFLECTION
# What are some general rules you can apply to nested arrays?
#   The nested array can be accessed at the parent array's corresponding index. Almost think of it like a normal aray element and access it that way (obviously going into further indexes once you are in the sub-array)

# What are some ways you can iterate over nested arrays?
#   Obviously the easiest is the .each method, however you can also use .map and .map!

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
#   We actually wound up using recursion which was a hugely useful tool in order to finish the bonus. I might actually wind up trying to implement a similar solution in my solo challenge this week. We decided it was the best way as we did not want to simply have a 1 time only solution. We wanted the bonus solution to work no matter how many arrays deep an item was.