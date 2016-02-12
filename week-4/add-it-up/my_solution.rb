# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Ryan Dempsey.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array of numbers
# Output: Sum of the numbers in the array
# Steps to solve the problem.

# Define method called total that will take x amount of parameters
# Those parameters will pushed into an array.
# Iterate the numbers in the array, adding them all together
# Output the final sum


# 1. total initial solution

def total(list_of_numbers)
  start = 0
  list_of_numbers.each do |x|
    start = start + x
  end
  p start
end

# 3. total refactored solution

def total(list_of_numbers)
 p list_of_numbers.reduce(:+)
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: an array of strings
# Output: a complete, gramatically correct sentence
# Steps to solve the problem.

# take an array of strings
# add them together in the proper order including capitaliziation, spacing, and punctuation.
# capitalize the first word of the sentence and all proper nouns
# put spaces between each word
# add proper punctuation throughout the sentence and at the end of the sentence
# output as a string which is a complete, correct sentence

# 5. sentence_maker initial solution


def sentence_maker(list_of_strings)
  start = ""
  list_of_strings.each do |x|
    start = start + x.to_s + " "
  end
  p start.capitalize.chop + "."
end

# 6. sentence_maker refactored solution


def sentence_maker(list_of_strings)
  p list_of_strings.join(" ").capitalize + "."
end
