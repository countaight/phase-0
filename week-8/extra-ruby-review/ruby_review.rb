# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
# Input: Number
# Output: Boolean of whether the number is part of the Fibonacci sequence

# Steps:
# - Recreate the fibonacci sequence by starting a list with 0, and 1.
	# - Create a counter that starts at 0 representing the position of each fibonacci number
	# - Add the numbers in position 0 and 1 and add it to the list
	# - Increase the position counter by 1, this should then add numbers in position 1 and 2 and add the result to the list
# - Meanwhile, save the last result of adding the numbers in the two positions and compare it to the given number, if the result is higher, stop adding numbers to the list.
# - Check to see if the number is on the list.


# Initial Solution

def is_fibonacci?(num)
	fib_array = [0, 1]
	index_counter = 0
	last_result = 0
	while last_result <= num do
		fib_array << fib_array[index_counter] + fib_array[index_counter+1]
		last_result = fib_array[index_counter] + fib_array[index_counter+1]
		index_counter += 1
	end
	fib_array.include?(num)
end


# Refactored Solution

def is_fibonacci?(num)
	fib_array = (0..1).to_a
	index_counter = 0
	while fib_array.last <= num do
		fib_array << fib_array[index_counter] + fib_array[index_counter+1]
		index_counter += 1
	end
	fib_array.include?(num)
end





# Reflection