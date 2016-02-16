# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# A number with multiple digits

# What is the output? (i.e. What should the code return?)
# The mult-digit number as text separated appropriately by commas.

# What are the steps needed to solve the problem?
# Take the number and turn it into workable text
# Count the numbers in the text
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

def separate_comma(number)
	num_string = number.to_s
	num_commas = num_string.size/3
	comma_array = (1..num_commas).to_a.map {|i| i * -4}
	comma_array.delete_at(-1) if num_string.size % 3 == 0
	if num_string.size > 3
		comma_array.each do |x|
			num_string.insert(x, ",")
		end
	end
	p num_string
end


# 3. Reflection

## What was your process for breaking the problem down? What different approaches did you consider?

# I started with what I knew, which was the input and the output, then I thought about the types of modifications I would like each type to go through. So for example, deciding if I wanted to turn the number to a string right away, can I do something with the fixnum first? Things like that. Then I thought about any other outside helpers, such as arrays or other strings, etc. that could help make calculations before implememting a loop. Once I saw the duties of each element (the string, array, etc.), I wrote them down in the sequence I thought most appropriate.


## Was your pseudocode effective in helping you build a successful initial solution?

# Definitely! Once I started typing the pseudocode, a bunch of possible methods popped in my head, and the once I didn't know, I visualize to look up later. I knew what needed to get done first and so it set a nice foundation for research.


## What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

# I used the Array#map method to map the positions of the commas, originally I had the work done within the loop, but that was prone to confusion and wordiness. I also used the Array#delete_at to shorten the conditional statement when the number of digits was divisible by 3.


## How did you initially iterate through the data structure?

# At first each I used the array to represent the number of commas, and iterated through them determining the position one by one.


## Do you feel your refactored solution is more readable than your initial solution? Why?

# I believe so, the setup of each variable at the beginning sets the feel for how the problem will be solved, and takes care of any wordy calculations. Then once it gets to the loop, it just clearly goes through the steps without any extra baggage.