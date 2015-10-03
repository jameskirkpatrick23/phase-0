# Simple Substrings

# I worked on this challenge [by myself, with: ].


# Your Solution Below
#if the address contains the substring 'CA' then return one message. if not then return the other
#use the include build in method. the ? at the end of it means that it returns bool data on if it contains/includes whatever the string is
def welcome (address)
   if address.include?'CA'
      return 'Welcome to California'
   else
      return 'You should move to California'
   end
end