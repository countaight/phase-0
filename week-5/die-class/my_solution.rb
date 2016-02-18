# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: Number of sides for a die
# Output: An object that represents a die with specific amount sides and the ability to be rolled
# Steps:
# Create an object die that accepts the number of sides as long as it is more than 1
# Give the object the ability to be rolled
# 	The ability should take the number of sides as the bounds for creation of a random number


# 1. Initial Solution

class Die
  def initialize(sides)
    if sides >=1
    	@sides = sides
    else
    	raise ArgumentError.new("need more sides bub")
    end
  end

  def sides
    @sides
  end

  def roll
    p Random.new.rand(1..@sides)
  end
end



# 3. Refactored Solution

class Die
	attr_reader :sides

  def initialize(sides)
    if sides >= 1 
    	@sides = sides
    else
    	raise ArgumentError.new("need more sides bub")
    end
  end

  def roll
    p Random.new.rand(1..@sides)
  end
end





# 4. Reflection

# What is an ArgumentError and why would you use one?

# The ArgumentError class allows you to raise an error based on the arguments supplied. It is best used when directing the user of waht input is not allowed as it pertains to inputted arguments.


# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

# I used the Random class and the rand method which allows a random number to be generated with optional bounds if needed.

# What is a Ruby class?

# A Ruby class is a set of collected methods and variables that are meant to describe or represent a specific object. The class then dictates how, and to what is responds. SO for example if there is a class Dog an instance of this class will be able to answer to any methods inside the class. One such method can be bark, which will allow the Dog to output a barking noise. Furthermore, if the Dog class is allowed to be named, it can be done so through its instance variables. Any behaviors or attributes not named will be rejected by the class.


# Why would you use a Ruby class?

# A Ruby class is a great way to organize methods and variables into objects that might behave similarly. It cuts down in repetition by assigning certain attributes and behaviors automatically to objects, once they are initially created. And because classes can inherit the behavior and attributes of other classes, one can easily predict how, and to what an object will respond based on these classes and parent classes (also known as superclasses).


# What is the difference between a local variable and an instance variable?

# Local variables have a very limited scope, as they're only available within the context of where they are created and only when created manually, ie. outside a method, or inside a method. On the other hand, instance variables are created the instant an object is created, and this instance variable within the class is allowed to be accessed throughout the class itself. So for example, an instance variable containing a name for the object can be accessed in the methods inside the class by the method just simply calling the variable.


# Where can an instance variable be used?

# An instance variable can be used inside a class, including the methods that are inside the class itself.

