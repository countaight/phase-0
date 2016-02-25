# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: A list of symbols representing the different sides of a die
# Output: A new die with each item on the list representing a single side
# Steps: 
# Design a die that accepts the list of symbols.
# Take the number of items and consider that the number of sides the die has
# Represent the position of the symbol on the list as a specific side
# When the die is rolled, a random number is generated bound by number of sides.
# 	The number is then referenced against the position
# 	The symbol at that position is printed


# Initial Solution

class Die
  attr_reader :labels, :sides

  def initialize(labels)
  	if not labels.empty?
      @labels = labels
  		@sides = labels.size
  	else
  		raise ArgumentError.new("need more sides bub")
  	end
  end

  def roll
  	labels[rand(sides)]
  end
end



# Refactored Solution

class Die
  attr_reader :labels, :sides

  def initialize(labels)
    @labels = labels
    @sides = labels.size
    raise ArgumentError.new("need more sides bub") if @labels.empty?
  end

  def roll
    labels.sample
  end
end






# Reflection

# For reflection video visit https://youtu.be/3gMugSHnqgs