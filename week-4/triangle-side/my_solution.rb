# I worked on this challenge [by myself, with: Danielle Cameron].


# Your Solution Below
#Steps/Notes:
 # 1. One where all three sides lengths are the same
 # 1. Check if all ints are > 0 && check if all ints are ==
 # 2. One where two sides lengths are the same and one is different
 # (Scalene) a==b || b==c || a==c
 # 3. One where all three sides lengths are different
 # return (a*a) + (b*b) == (c**)

=begin
def valid_triangle?(a,b,c)
 if a && b && c > 0
  if a==b && b==c && a==c
    return true #check to see if the return is needed
  elsif (a+b> c) && (a+c> b) && (b+c>a)
    return true
  elsif (a**2) + (b**2) == (c**2) && (b**2) + (c**2) == (a**2) && (a**2) + (c**2) == (b**2)
   return true
  else
    return false
  end
  end
end

=end

#------------------------------------------------------------------------------------
#------------------------------TRY # 2-----------------------------------------------
#------------------------------------------------------------------------------------
#the only goal of this program is to determine if the sides can actually make a valid triangle
#based on that stipulation we just ned the definition of a triangle
#if each set of 2 sides can be added up to be greater than the third side, then it is valid
def valid_triangle?(a, b, c)
   #Your code goes here!
  return a + b > c && b + c > a && a + c > b
end