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
    if @last_result == :correct
      true
    else
      false
    end
  end     
end




# Reflection