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
#How do you define a method?
#What is the difference between a local variable and a method?
#How do you run a ruby program from the command line?
#How do you run an RSpec file from the command line?
#What was confusing about this material? What made sense?
=end