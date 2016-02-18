# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Jon Norstrom]

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# # What is the input? The input is an array of numbers or strings.
# What is the output? (i.e. What should the code return?) An array of the most used objects in the input-array.
# What are the steps needed to solve the problem? 
#Create a hash that takes the unique values as keys, and then the amount that they show up as values. Then make an array that searches for the highest values of the hash, and the outputs the keys related to those values.


# 1. Initial Solution

def mode(array)
  counter = {}
  array.each { |x|
    if counter.has_key?(x)
      counter[x] += 1
    else
      counter[x] = 1
    end
  }
  mode_array = []
  counter.each { |k, v|
    if v == counter.values.max
      mode_array << k
    end
  }
  p mode_array
end

# 3. Refactored Solution

def mode(array)
  mode_array = []
  counter = array.inject(Hash.new(0)) { |k, v| k[v] += 1; k}
  counter.each { |k, v|
    v == counter.values.max ? mode_array << k : nil
  }
  p mode_array
end

# 4. Reflection

# Which data structure did you and your pair decide to implement and why?

# We decided to use a hash because of its ability to keep unique keys while allowing us to push different values into it. So for example a number would become the key and because a hash is very strick with keeping it unique, we made sure any subsequent numbers would increase the value and not create a new entry.


# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

# I would say I was equally successful at breaking down the problem.


# What issues/successes did you run into when translating your pseudocode to code?

# We didn't really run into any problems, perhaps just deciding with method would be the best and cleanest.


# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

# At first we used the each method to iterate through the array into the hash, but we then found the super useful method, inject. Inject allows you to create an object based on an enumerable, such as an array, and manipulate its content using a block of code or operations. It quickly turned our array into a hash. It was a bit tricky to implement because we didn't know what sort of object it would return. Using a few "p" we discovered it was the hash and then just ran our next array iterator to push the final values.