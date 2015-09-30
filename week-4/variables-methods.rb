#Full Name Greeting Program
puts 'What is your First Name?'
first_name = gets.chomp
puts 'What is your Middle Name?'
middle_name = gets.chomp
puts 'What is your Last Name?'
last_name = gets.chomp

puts 'Nice to meet you ' + first_name + ' ' + middle_name + ' ' + last_name + ' !'

#Bigger Better Number Program
puts 'What is your favorite number?'
favorite_num = gets.chomp
favorite_num = favorite_num.to_i + 1
puts 'I have taken the liberty of beefing up your favorite number, and making it super awesome! Your new favoite number is: ' + favorite_num.to_s

=begin
How do you define a local variable?
  Local variables are variables that only apply to a single method, and will be destroyed upon completing the method in reference. In the below example, all three variables that are called for the 'do something' method are considered local. After the method runs its course, those three variables will cease to exist.

  https://github.com/jkirkpatrick1990/phase-0/blob/master/week-4/define-method/my_solution.rb

#How do you define a method?
  I define a method as a subroutine that programmers can put into programs that allow you to reuse parts of code, and solve complex problems with minimal excess code

#What is the difference between a local variable and a method?
  A local variable is called within a method to assist in completing a task the method is given. A method itself is a subroutine a programmer uses in order to replicate a set of code.

#How do you run a ruby program from the command line?
  'ruby filename.rb'

#How do you run an RSpec file from the command line?
  'rspec filename_rspec.rb'

#What was confusing about this material? What made sense?
  There wasn't too much confusion here. It was a pretty straightforward challenge. Everything made sense here.

https://github.com/jkirkpatrick1990/phase-0/blob/master/week-4/address/my_solution.rb

https://github.com/jkirkpatrick1990/phase-0/blob/master/week-4/math/my_solution.rb
=end