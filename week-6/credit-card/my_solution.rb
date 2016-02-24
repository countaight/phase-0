# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: Wesley El-Amin].
# I spent [1.5] hours on this challenge.

# Pseudocode
=begin
Take a 16 digit number as input. 
Output should be a true or false statement determining whether the credit card
number is valid.
Create a class method for CreditCard that initializes with 16 digits. If the 
number that has been input is not 16 digits long, the user will recieve an ArgumentError.
Take the input number, convert it into a string, and split the string into individual 
parts. Starting with the second to last string, convert that and every other string
to an integer, then double its value change it to a string.
If the string is longer than one character, break it into single-character parts.
Finally, convert all strings to integers and add them together and divide that sum
by 10. 
Set up a conditional: If the quotient of the sum of all integers divided by 10
has no remainder, the statement is true. If there is a remainder, the statement is false.
=end


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize (number)
    if number.to_s.length == 16
      @number = number.to_s
    else
      raise ArgumentError.new("not a valid number")
    end 
  end
  
  def split_number
    @number_array = @number.split(//)
  end
  
  def double_every_other
    split_number
    @double_array = @number_array.collect.with_index { |digit, index| index.even? || index == 0 ? digit.to_i * 2 : digit }
    @double_array.map! { |term| term.to_s.split(//)}
    @double_array.flatten!
  end
  
  def check_card
    double_every_other
    if @double_array.inject(0) { |memo, number| memo + number.to_i } % 10 == 0
      true
    else
      false
    end
  end
    

end

# Refactored solution

class CreditCard
  # Initializes CreditCard class as a 16 character string using a 16 digit number.
  def initialize (number)
    @number = number.to_s if number.to_s.length == 16
    raise ArgumentError.new("not a valid number") if number.to_s.length != 16
  end
  
  # Splits the original string into 16 strings, places them in an array, then
  # then converts the first string and every other subsequent string into an 
  # integer. Finally this method doubles each integer, converts each integer
  # into a string, and places all of the strings (old and new) into an array. 
  def double_every_other
    @number_array = @number.split(//)
    @double_array = @number_array.collect.with_index { |digit, index| index.even? ? digit.to_i * 2 : digit }
    @double_array.map! { |term| term.to_s.split(//)}.flatten!
  end
  
  # This final method takes all of the strings in the new array, converts them
  # into integers, and adds them up. If the sum of all of those integers is 
  # divisible by 10 with no remainder, the method returns true. In any other circumstance,
  # the method returns false.
  def check_card
    double_every_other
    @double_array.inject(0) { |initial, number| initial + number.to_i } % 10 == 0
  end
end



#Reflection

# What was the most difficult part of this challenge for you and your pair?

# The most difficult was going from one method to the next to logically fulfill the requirements. I felt that a few times we got results other than the ones we expected.


# What new methods did you find to help you when you refactored?

# We didn't find any new methods, we used inject, map, and flatten to maneuver and alter the arrays we needed to follow the algorithm


# What concepts or learnings were you able to solidify in this challenge?

# The different ways methods can call each other and the ways the pass on variables. Especially the instance variables, they can really be used anywhere in the class it makes it very convenient.