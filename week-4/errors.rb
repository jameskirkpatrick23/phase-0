# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#{}"Screw you guys " + "I'm going home." = cartmans_phrase

# 1. What is the name of the file with the error?
# error.rb file

# 2. What is the line number where the error occurs?
# line 8

# 3. What is the type of error message?
# syntax error

# 4. What additional information does the interpreter provide about this type of error?
# there is an unexpected = sign. it expected the end of the code

# 5. Where is the error in the code?
# the error is in the setup of the equation. should be cartmans_phrase = 'string' + 'string'
# 6. Why did the interpreter give you this error?
# because it does not understand what we are trying to have it do with this syntax


# This error was analyzed in the README file.
# --- error -------------------------------------------------------

=begin
def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end
=end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb

# 2. What is the line number where the error occurs?
# 188 (but really its line 34)

# 3. What is the type of error message?
# syntax error

# 4. What additional information does the interpreter provide about this type of error?
# it was expecting an end somewhere and never got one

# 5. Where is the error in the code?
# line 34, at the end of the while statement there should be another end

# 6. Why did the interpreter give you this error?
# because there was no end to the method definition and it couldnt figure out why

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# 60

# 2. What is the type of error message?
# name error

# 3. What additional information does the interpreter provide about this type of error?
# the variable has never been defined

# 4. Where is the error in the code?
# right after south_park

# 5. Why did the interpreter give you this error?
# theres nothing telling the machine what its supposed to assign the variable to

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# 79

# 2. What is the type of error message?
# not method error

# 3. What additional information does the interpreter provide about this type of error?
# the object is undefined

# 4. Where is the error in the code?
# with the statement itself

# 5. Why did the interpreter give you this error?
# you never defined the variable in the first place in order to be able to call it

# --- error -------------------------------------------------------

=begin
def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')
=end

# 1. What is the line number where the error occurs?
# 98

# 2. What is the type of error message?
# argument error

# 3. What additional information does the interpreter provide about this type of error?
# given 1 argument when there should be 0

# 4. Where is the error in the code?
# when calling the argument (line 102)

# 5. Why did the interpreter give you this error?
# the method was defined to not take in any arguments

# --- error -------------------------------------------------------

=begin
def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says
=end

# 1. What is the line number where the error occurs?
# 127

# 2. What is the type of error message?
# argument error

# 3. What additional information does the interpreter provide about this type of error?
# given no arguments, expected 1

# 4. Where is the error in the code?
# in calling the argument on line 127

# 5. Why did the interpreter give you this error?
# because the method expects an argument to be passed through when it wasn't



# --- error -------------------------------------------------------

=begin
def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')
=end

# 1. What is the line number where the error occurs?
# 150

# 2. What is the type of error message?
# argument error

# 3. What additional information does the interpreter provide about this type of error?
# provided 1 argument when there should be 2

# 4. Where is the error in the code?
# in calling the argument

# 5. Why did the interpreter give you this error?
# because the method requires 2 arguments to be passed through, and was only given 1

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 175

# 2. What is the type of error message?
# type error

# 3. What additional information does the interpreter provide about this type of error?
#string can't be changed into a fixednum

# 4. Where is the error in the code?
# line 175

# 5. Why did the interpreter give you this error?
# because it tried to multiply 5 to a string, which it cannot do. it could however have done string * 5

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 194

# 2. What is the type of error message?
# divide by zero

# 3. What additional information does the interpreter provide about this type of error?
# divided by 0

# 4. Where is the error in the code?
# line 194

# 5. Why did the interpreter give you this error?
# because you can't divide by 0

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 214

# 2. What is the type of error message?
# load error

# 3. What additional information does the interpreter provide about this type of error?
#cannot load the file then gives a file path

# 4. Where is the error in the code?
# line 214

# 5. Why did the interpreter give you this error?
# because there is no such file to be loaded


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin
1) Which error was the most difficult to read?
  I didn't have much trouble with any of them. However I could see how the second error with a missing end would throw most people.

2) How did you figure out what the issue with the error was?
  I looked at the block of code that I was trying to debug in the first place, and noticed the missing end

3)Were you able to determine why each error message happened based on the code?
  It tells you most of the information in the error statement itself, form there you have to do some minimal digging to uncover the nature of the error.

4)When you encounter errors in your future code, what process will you follow to help you debug?
  probably the easiest is breaking your code into tiny parts and debugging things one at a time. I would follow the test driven design to make sure the code is working properly first, then use print statements in order to ensure the correct outputs are coming through.
=end