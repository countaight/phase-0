#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input: New greeting instance, greeting.hello
# Output: "Hello #{name}! How wonderful to see you today."
# Steps: 
# First create an object with an attribute name that is my own.
# Create another object that will create a greeting using the name of the first object.
# The greeting object will take first object and create it within itself.
# It will then read its name and supply it to the sentence.

class NameData
	attr_reader :name

	def initialize
		@name = "Oscar Delgadillo"
	end

end


class Greetings

	def initialize
		@name_data = NameData.new
	end

	def hello
		puts "Hello #{@name_data.name}! How wonderful to see you today."
	end

end

greet = Greetings.new

greet.hello



# Reflection

# Release 1

# What are the methods doing?
# The change_my_### methods allow the instance variables inside the class, in this example the age, name, and occupation, to be changed outside of the class by calling the method to the instance. To elaborate, a method inside a class allows the instance of that class, in this case Person, to respond to that method. If we had a class called def talk, that outputted the words "Hello!" to the console, then that method would be available to the instance of the Person, and calling it would just be a matter of intance_of_Person.talk. Similarly, a method that allows the instance variables to be set to something different (setter methods), can be called like this instance_of_Person.name = New Name. The other what_is_#### methods, allow those instance variables to become visible outside of the class, these are considered getter methods because they only allow you to get the value, but not change it.

# How are they modifying or returning the value of instance variables?
# These setter and getter methods are similar to any other methods within classes, but can access the instance variables inside the class, and therefore can alter them or display them when required. So for example, the change_my_age method, takes the instance variable age, and is able to modify it within the method and then return it. the what_is_age method can then take the variable and display it.

# Release 2

# What changed between the last release and this release?
# An attribute reader, age, has been added and the what_is_age has been commented out. This allows the age to be read as if it were an instance method.

# What was replaced?
# The what_is_age method has been replaced with the attr_reader code at the beginning.

# Is this code simpler than the last?
#  It is, the attr_reader gets rid of 3 lines of code while also allowing the class code to be read more easily. For example, someone reading this code can immediately see that age will be an instance variable that will be accessible from outside the class.

# Release 3

# What changed between the last release and this release?
# Given the mismatching release number in the files, I will relate this to the changes in file release_3.rb and release_4.rb: In these files an attr_reader was added for age, which allows age to be rewritten outside the class by calling it as if were the method "change_my_age", the associated writer method has now been condensed to the "age" method. In release_4.rb having both, attr_reader and attr_writer for age, the code could then be condensed to attr_accessor age, which actualy fulfills the same operations as attr_reader and attr_writer in one.

# What was replaced?
# In release_3.rb the method change_my_age has been replaced by attr_writer :age, and in release_4.rb having both methods taken out (what_is_age and change_my_age) by attr_reader and attr_writer, respectively, we can in turn replace those with attr_accessor :age.

# Is this code simpler than the last?
# With each subsequent change, the code because simpler, easier to understand, and faster to run as well.

# Release 6

# What is a reader method?
# A reader method allows an instance variable inside a class to be read outside the call. For example:
# class Person
# 	def initialize
# 		@name = name
# 	end
# 	@random_variable = "I am cool!"
# end
# In the above example adding reading methods that look like this:
# def name
# 	@name
# end
# ...or...
# def random_variable
# 	@random_variable
# end
# --would allow instance_of_person.name and instance_of_person.random_variable to be displayed in the console or passed around as arguments, since they are able to be read.

# What is a writer method?
# A writer method is similar to a reader method except in allows the variable to be set or changed, using the above example again, we can have methods:
# def name=(new_name)
# 	@name = new_name
# end
# ...or...
# def random_variable=(new_value)
# 	@random_variable = new_value
# end
# These can easily be called, instance_of_person.name = "New Fab Name" and similarly the random_variable can be changed to anything.

# What do the attr methods do for you?
# The attr methods allow the previous methods at its simplest form, to become obsolete, meaning, that if nothing else it to be done with variable for display or updating,then the attr do the exact same thing as the three lines of codes required for the reader and writer methods.

# Should you always use an accessor to cover your bases? Why or why not?
# Absolutely not, if a variable does not need to accessed or rewritten outside of a class, it is best to keep it inaccessible, otherwise, your code can be exposed leaving vulnerable for alteration even if accidentally.

# What is confusing to you about these methods?
# The fact that the attr methods really only do the job of the simplified methods confused me as to their utility. I was imagining a greater scope of maneuverability inside the class, but that is already afforded by an instance variable's (@instance_variable) inherent ability to be used anywhere in the class. The attr simply extend that scope to outside of the instance and the class. 