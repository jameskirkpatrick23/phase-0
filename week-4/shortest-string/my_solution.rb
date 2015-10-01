# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below

def shortest_string(list_of_words)
  #initialize temp shortest string
  temp_shortest_string = list_of_words[0]

  if list_of_words.empty?
    return nil
  else
    list_of_words.each do |word|
     if word.length < temp_shortest_string.length
      temp_shortest_string = word
      end
    end
    return temp_shortest_string
  end

end