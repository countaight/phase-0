# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#    errors.rb
# 2. What is the line number where the error occurs?
#    According to the error warning line 170
# 3. What is the type of error message?
#    It's a syntax error
# 4. What additional information does the interpreter provide about this type of error?
#    unexpected end-of-input, expecting keyword_end. The intepreter was expecting the keyword 'end'.
# 5. Where is the error in the code?
#    Right after the String "What's there to hate about #{thing}"
# 6. Why did the interpreter give you this error?
#    The while loop requires an end keyword to terminate.

# --- error -------------------------------------------------------

south_park = "great show"

# 1. What is the line number where the error occurs?
#    Line 36
# 2. What is the type of error message?
#    It's a NameError
# 3. What additional information does the interpreter provide about this type of error?
#    undefined local variable or method 'south_park' for main:Object. The interpreter couldn't find a variable or method by the name south_park.
# 4. Where is the error in the code?
#    Where the word south_park is written.
# 5. Why did the interpreter give you this error?
#    south_park is a local variable or method that hasn't been previously defined or assigned, it's just an empty shell not pointing to anything.

# --- error -------------------------------------------------------

def cartman
	puts "This is a method."
end

cartman()

# 1. What is the line number where the error occurs?
#    Line 51
# 2. What is the type of error message?
#    It's a NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
#    undefined method 'cartman' for main:Object. The interpreter couldn't find a method named cartman.
# 4. Where is the error in the code?
#    Where cartman, the method with parenthesis is called.
# 5. Why did the interpreter give you this error?
#    cartman() is a method not previously defined.

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase()

# 1. What is the line number where the error occurs?
#    Line 70
# 2. What is the type of error message?
#    It's an ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#    The interpreter ran the wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
#    Where the method is called inside the parenthesis
# 5. Why did the interpreter give you this error?
#    An argument, 'I hate Kyle' was supplied when the actual method doesn't require any arguments

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("WTF!")

# 1. What is the line number where the error occurs?
#    Line 89
# 2. What is the type of error message?
#    It's an ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#    The interpreter ran the wrong number of arguments (o for 1)
# 4. Where is the error in the code?
#    Where the method was called in between the parenthesis, there's no argument.
# 5. Why did the interpreter give you this error?
#    No arguments were supplied when calling the method, despite the fact that the method requires one.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Kenny')

# 1. What is the line number where the error occurs?
#    Line 110
# 2. What is the type of error message?
#    It's an ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#    The interpreter ran the wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
#    Where the method was called, only one argument is present.
# 5. Why did the interpreter give you this error?
#    The method cartmans_lie was called with one argument, but the method defined requires 2

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
#    Line 129
# 2. What is the type of error message?
#    TypeError
# 3. What additional information does the interpreter provide about this type of error?
#    String can't be coerced into Fixnum
# 4. Where is the error in the code?
#    After the "*" the String could not be corverted into Fixnum
# 5. Why did the interpreter give you this error?
#    A Fixed number cannot be multiplied by a string, nor can a string be converted into a Fixnum in order to multiply the 5. The opposite is possible, a String can be multiplied by a Fixnum to produce that String that many times.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#    Line 144
# 2. What is the type of error message?
#    It's a ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
#    Interpreter divided by 0
# 4. Where is the error in the code?
#    After '/' sorry is not a valid denominator.
# 5. Why did the interpreter give you this error?
#    It is mathematically impossible to divide by 0

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#    Line 160
# 2. What is the type of error message?
#    It is a load error
# 3. What additional information does the interpreter provide about this type of error?
#    Interpreter cannot load such file -- /vagrant/phase-0/week-4/cartmans_essay.md
# 4. Where is the error in the code?
#    The require_relative references a non existant file
# 5. Why did the interpreter give you this error?
#    The file is trying to load another file, "cartmans_essay.md" that is not in the same directory as this file.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# -Which error was the most difficult to read?
#    I felt all the errors were pretty obvious and self-explanatory. The syntax errors where a method or loop is not closed with an end keyword can be tricky though because the error doesn't point to the exact spot.

# -How did you figure out what the issue with the error was?
#  By looking at the line suggested by the error, the error was often there, but if it wasn't, any surrounding code can be the culprit, if that's not the case then an analysis of what the line is trying to do--i.e. call a method or find a variable--that part of the code should be analyzed.

# -Were you able to determine why each error message happened based on the code?
#  I'd like to think that yes, I was able to find the code based on the error, again with the exception of some syntax codes.

# -When you encounter errors in your future code, what process will you follow to help you debug?
#  First analyze the code line given by the error. Then just trace any method, variables, or loops back. Or in the case of load errors, make sure the external files are in the right spot.