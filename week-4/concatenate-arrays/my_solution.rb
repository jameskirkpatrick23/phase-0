# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)
  #initialize a temporary array thats empty
  temp_array = []

  #check if both are empty
  if array_1.empty? && array_2.empty?
    return temp_array
  else
    #iterate through both arrays and push the items onto the temporary array
    array_1.each do |item|
      temp_array.push item
    end
    array_2.each do |item2|
      temp_array.push item2
    end
    #return the new concentated array
    return temp_array
  end
end