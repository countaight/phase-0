# Pad an Array

# I worked on this challenge [with: Brittney Braxton]

# I spent [2] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? A list of numbers, a number to change the size of the list, and an optional "list filler"
# What is the output? (i.e. What should the code return?) A list of numbers increased to the selected number size filled in with the list filler
# What are the steps needed to solve the problem?

# Take the list of numbers and read what's on each of the lists
# IF the list size is going to be increased by something larger than the original list. 
# 	THEN we will take the original values and put it in a new list. 
# 	We can take the original list and SUBTRACT it from the number. 
#      number - original list = ____
# 	First we would take the optional argument and put it into it's own list. While we fill our new array with the original list, we then push the word into any remaining spaces. 


# 1. Initial Solution

def pad!(array, min_size, value = nil) #destructive
  if min_size > array.size 
    pad_array = Array.new(min_size - array.size, value) 
    pad_array.each do |x|
      array << x 
    end    
  else
    array 
  end
  p array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = [] 
  if min_size > array.size 
    pad_array = Array.new(min_size - array.size, value) 
    new_array = array + pad_array 
  else
    array.each do |x|
      new_array << x 
    end 
  end
  p new_array
end


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  if min_size > array.size 
    array.fill(array.size, min_size-array.size) { value }  
  end
  p array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  if min_size > array.size
    new_array.concat(array + Array.new(min_size-array.size, value))
  else
    array.each { |x| new_array << x }
  end
  p new_array
end



# 4. Reflection

# Were you successful in breaking the problem down into small steps?

## I believe we were. We started with what we knew, and just thought about what small modifications we wanted our inputs to go through.


# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

## By using words synonymous with some Ruby methods we were able to visualize what methods to begin with, and translating into Ruby wasn't so difficult.


# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

## Yes, our first attempt was successful. I feel the code followed a logical progression of our steps until led to the answer. We also used some driver code to make sure our results were as requested either non-destructive (result.object_id != input.object_id which does equal its original object_id) or destructive by proving that an array variable changed.


# When you refactored, did you find any existing methods in Ruby to clean up your code?

## For non-destructive we only found ways to shorten our code and make it more readable, but for the destructive method we found .fill to work wonderfully for expanding the array and also filling it with a value.


# How readable is your solution? Did you and your pair choose descriptive variable names?

## We did, in the non-destructive method we used a new_array to house our newly created array and a pad_array to house the required padding to be added in later steps.


# What is the difference between destructive and non-destructive methods in your own words?

## Destructive methods affect the internal object content when called upon, so for example, sorting a list destructively outputs the sorted list to the console but also sorts the list in place and any subsequent calls to the variable reveals that it has changed. Meanwhile, non-destructive methods output the change to the console but leaves the object untouched, so once the method is called and revealed, the original object remains the same, in the case of our list, our list would be sorted and displayed, but calling the variable again shows it its original state.