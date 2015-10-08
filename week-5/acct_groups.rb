# Psuedocode
# Read in every member into an array temporarily to hold them
# look to find a way to split that array up
# possibly look to push every 3 or 4 people into a hash, and use hash key as each new group
student_array = ["Joshua Abrams", "Syema Ailia", "Kris Beis", "Alexander Blair", "Andrew Blum", "Jacob Boer", "Steven Broderick", "Ovi Calvo", "Danielle Cameron", "Celeste Carter", "Eran Chazan", "Jonathan Chen", "Un Choi", "Kevin Corso", "Eric Dell'Aringa", "Eunice Do", "Ronny Ewanek", "John Paul Chaufan Field", "Eric Freeburg", "Jeffrey George", "Jamar Gibbs", "Paul Gaston Gouron", "Gabrielle Gustillo", "Marie-France Han", "Noah Heinrich", "Jack Huang", "Max Iniguez", "Mark Janzer", "Michael Jasinski", "Lars Johnson", "Joshua Kim", "James Kirkpatrick", "Chistopher Lee", "Isaac Lee", "Joseph Marion", "Kevin Mark", "Bernadette Masciocchi", "Bryan Munroe", "Becca Nelson", "Van Phan", "John Polhill", "Jerry Powell", "Jessie Richardson", "David Roberts", "Armani Saldana", "Chris Savage", "Parminder Singh", "Kyle Smith", "Aaron Tsai", "Douglas Tsui", "Deanna Warren", "Peter Wiebe", "Daniel Woznicki", "Jay Yee", "Nicole Yee", "Bruno Zatta"]

def acct_group (array_of_students)
  array_of_students.shuffle!
  num_groups = array_of_students.length / 4
  current_group = 1
  accountability_hash = Hash.new ()

  while current_group <= num_groups
    accountability_hash ["Accountabilty Group #{current_group}"] = (array_of_students.slice! (0..2))
    current_group += 1
  end
  while array_of_students[0] != nil
    random_group = rand(1...num_groups)
    accountability_hash ["Accountabilty Group #{random_group}"] << (array_of_students.slice! (0))
  end
end

acct_group (student_array)

#-----------------------------REFLECTION------------------------------------------

# What was the most interesting and most difficult part of this challenge?
#   The most interesting was figuring out how to push just a portioin of an array onto the hash. The being able to work with the stragglers to find them a group too. The most difficult was deciding how to go about doing just that. Once I decided how I wanted to approach it, then it was pretty easy.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
#   Yes, however I still need more work. I noticed that while my psuedocode certainly defined the high level points that I wanted, it did not really break things down to the very basic steps I would have to take

# Was your approach for automating this task a good solution? What could have made it even better?
#   I do feel that it is a good solution, it creates the correct number of groups, can be changed in terms of group size, and leaves no stragglers. I could look to possibly nest the while loops to make the code slightly cleaner.

# What data structure did you decide to store the accountability groups in and why?
#   I utilized an array initially to store the names, then translated it to a hash so that I could have control over the key names, and store things easier at those indexes

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
#   I learned more about the slice method, as well as utilizing the random method to put the stragglers in different groups. The challenge was fun, and I am excited to continue to refactor it over the week.