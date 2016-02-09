puts 'Hello there, and what\'s your name?'
name = gets.chomp
puts 'Oh yea? And what\'s your middle name?'
middle_name = gets.chomp
puts 'Interesting, and what is your last name?'
last_name = gets.chomp
puts 'Your name is ' + name + ' ' + middle_name + ' ' + last_name + '? What a lovely name!'
puts 'Pleased to meet you, ' + name + ' ' + middle_name + ' ' + last_name + '. :)'

puts 'Say... what\'s your favorite number?'
fav_num = gets.chomp
big_num = fav_num.to_i + 1
puts 'That\'s totes cool bruh, but don\'t you think ' + big_num.to_s + ' is a much bigger, better number?'

# How do you define a local variable?
# How do you define a method?
# What is the difference between a local variable and a method?
# How do you run a ruby program from the command line?
# How do you run an RSpec file from the command line?
# What was confusing about this material? What made sense?

# A local variable is defined like this: local_variable = "string or integer or fix num here" A local variable can start with a lower case letter or an underscore, however Ruby convention is to add an underscore for multiword variables, as opposed to camel case (localVariable) such as the one I defined.

# A method is defined like this: def method(arguments)
# 							       block of instructions here
# 								 end
# Methods follow the same naming conventions as variables, snake case, etc. But they can also end in a ? ! or =

# A local variable saves an instance of an object, such as strings, numbers, or other objects, while methods are blocks of codes with variable amounts of instructions to run. Methods can then be called on local variables or local variables can be passed down into methods as arguments.

# Typically a ruby program can be run from the command line by typing ruby program.rb

# An RSpec file is run similar to Ruby files, rspec test_spec.rb usually from within the same working directory as the files.

# I've had a bit of previous experience with Ruby, this all made sense and was a great refresher. I'd say the RSpec was a bit newer, but not at all confusing.

# Links to Release 2 and 4
# http://github.com/countaight/phase-0/blob/master/week-4/define-method/my_solution.rb
# http://github.com/countaight/phase-0/blob/master/week-4/address/my_solution.rb
# http://github.com/countaight/phase-0/blob/master/week-4/math/my_solution.rb