# Research Methods

# I spent [1.5] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
# Pseudocode
# Take an existing list, and letter or word.
# Search through the list to see if any element contains the inputted letter or word and save it in another list.
# Take the saved list and delete each element matching on both lists.

def my_array_deletion_method!(source, thing_to_delete)
  words_to_delete = source.find_all { |f| f.to_s.include?(thing_to_delete)}
  words_to_delete.each do |word|
    source.delete(word)
  end
  p source
end

# Pseudocode
# Take an existing list, and word.
# Find the word inside the list and delete it.

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete(thing_to_delete)
  p source
end



# Identify and describe the Ruby method(s) you implemented.
#
# Enumerable#find_all allows you to pass a block of code specifing every element in the array that matches that block. In my code I used it to find every element that included the thing wanted to be deleted.
# String#include? accepts an argument and returns a true or false if it is found inside that string.
# Enumerable#delete accepts an argument and if found in an array, deletes the element in that array, and if it's a hash deletes the key along with its paired value.
# These methods are great for using with each other. The Include method for example can initiate an if statement since it returns either true or false. In my case I used it to pass any elements that tested true into a separate array by calling the find_all method. Finally, delete is great for destructively altering an array or hash by removing an element or key.
# One way I found to make it easier to read the Ruby docs, is to read the side bar and quickly scan for any potential methods that sound somewhat to what I want to achieve, I then also quickly read over the description. If the examples shown are similar to the results I want achieved, I then use IRB to experiment until I can get it to do what I want it to do. If that method fails to produce what I want, or is too convoluted, I just move on another method. I also noticed the Ruby docs have a very specific pervasive vocabulary, such as initial, sym, obj, these point to what it requires and what is produced. For example obj is an object, initial, is an optional initial value some methods take, etc.


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#