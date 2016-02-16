# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# A number with multiple digits

# What is the output? (i.e. What should the code return?)
# The mult-digit number as a string separated appropriately by commas.

# What are the steps needed to solve the problem?
# Take the number and turn it into a string
# Count the size of the string
# If the number is longer than 3 digits
#   Determine how many commas will be needed
#   Add a comma after every third digit starting from the right.
# If the number is divisible by 3
#   The last three digits from the right are not preceded by a comma.

# 1. Initial Solution

def separate_comma(number)
	num_string = number.to_s
	if num_string.size % 3 != 0
		comma_array = (1..num_string.length/3).to_a
	else
		comma_array = (1..(num_string.length/3)-1).to_a
	end
	if num_string.size > 3
		comma_array.each do |x|
			num_string.insert((x * -4), ",")
		end
	end
	p num_string
end



# 2. Refactored Solution




# 3. Reflection