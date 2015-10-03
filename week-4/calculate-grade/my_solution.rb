# Calculate a Grade

# I worked on this challenge [by myself, with: ].


# Your Solution Below
#return a string depending on the given grade average
#each subsequent if statement will make sure that the previous condition is not met so no further equalities are needed to determine once a level has been passed through
def get_grade (average)
  if average >= 90
    return 'A'
  elsif average >= 80
    return 'B'
  elsif average >= 70
    return 'C'
  elsif average >= 60
    return 'D'
  else
    return 'F'
  end
end