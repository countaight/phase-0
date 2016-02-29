# Build a simple guessing game


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: A number that becomes the answer to a guessing game, afterwards a different number is used as a guess and it is compared to the original answer.
# Output: Once an answer has been established, the number entered as a guess outputs whether the number is high, low, or correct. The game also saves whether the number has been guessed.
# Steps:
# Take an initial number to be saved as the answer in a guessing game
# While the game hasn't been solved
#   Allow guesses to be made by accepting a number
#   The number is considered the last guess
#   The number is then compared with the answer
#   If the guess is higher
#     Let the user know it is high
#   else if the guess is lower
#     Let the user know it is low
#   else if the guess is equal to the answer
#     Let the user know it is correct
#   Update the last result


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#     @last_guess = nil
#     @last_result = nil
#   end

#   def guess(number)
#     @last_guess = number
#     if number > @answer
#       @last_result = :high
#     elsif number < @answer
#       @last_result = :low
#     elsif number == @answer
#       @last_result = :correct
#     end
#   end

#   def solved?
#     if @last_result == :correct
#       true
#     else
#       false
#     end
#   end     
# end




# Refactored Solution

class GuessingGame
  attr_accessor :last_guess, :last_result

  def initialize(answer)
    @answer = answer
    @last_guess = nil
    @last_result = nil
  end

  def guess(number)
    @last_guess = number
    if number > @answer
      @last_result = :high
    elsif number < @answer
      @last_result = :low
    elsif number == @answer
      @last_result = :correct
    end
  end

  def solved?
    @last_result == :correct ? true : false
  end     
end

# Driver Code
puts "Enter a difficulty between 1-100"
difficulty = 10 * gets.chomp.to_i

fungame = GuessingGame.new(rand(difficulty))

until fungame.solved?
  p "Ready to guess?"
  fungame.last_guess = gets.chomp.to_i
  fungame.guess(fungame.last_guess)
  p "#{fungame.last_guess} was #{fungame.last_result}"
  puts ""
end

p "You solved the game, yay!"




# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# Instance variables are similar to characteristics in objects, in that they hold values that represent things like names, size, colors, or anything that is unique of that particular object. Methods on the other hand help the object respond to different calls in specific ways, and in that sense is defining the bahavior of that object.


# When should you use instance variables? What do they do for you?
# Instance variables should be used when a particular object needs to hold a specific characteristic or state. For example, an object representing a ticket, might need a venue name, price, and event name. Instance variables also have the advantage of having a larger scope within the class. They are able to be used in any methods created inside the class, and therefore can be altered, read, printed, etc. whenever necessary. So for example, a method that prints the ticket information in a specially formatted way, will have access to those instance variables, venue, price, and event, and be able to display them on the console.


# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# Flow control is used when multiple inputs are possible and the outcome needs to be different. So for example asking for a guess to the game's answer, a value needs to be outputted dipending on the relationship between the guess and the answer, high, low, or correct. One mini struggle, was trying to make sure the instance variable that held the last result could go from false to true if the correct answer was given, and then an incorrect answer.


# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# Symbols are similar to strings except when created symbols are unique objects throughout the code, in contrast, every time a string is created, even if it's the same string with the same content, a new object is created for that string. Using symbols for repeated use of the values such as high, low or correct, help cut down on memory usage, since the string isn't created multiple times with multiple object ids.