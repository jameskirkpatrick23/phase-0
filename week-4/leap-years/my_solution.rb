# Leap Years

# I worked on this challenge [by myself, with: Danielle].


# Your Solution Below
#start with year 1
#any year that can be evenly divided by 4
#except if that year can be evenly divided by 100
    # if % 100 == 0
#except if that year can be

#methods used: % modulus
  #looking specifically for x % 4 to be 0
  #if thats ttrue then its a leap year
def leap_year? (year)

  #if the year / 4 has no remainder
  #and the year / 100 has a remainder OR year / 400 has no remainder
  #return the true or falseness of that statement to determine leap year status

  return year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)

end
