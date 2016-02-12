# Factorial

# I worked on this challenge by myself.


# Your Solution Below
def factorial(number)
  start = 1
  facto = (1..number).to_a
  facto.each do |x|
    start = start * x
  end
  p start
end

# input:  non-negative integer
# convert into a range of all available integers (i.e 1-5 for 5)
# put values in an array (for interation)
# iterate over the array, multiplying the values with each other
# output: the product of the all the values in the range

# start = 1
# for every integer in the array, multiply start by the integer and save it into start again

# number = top limit
