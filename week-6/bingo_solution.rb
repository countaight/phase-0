# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Set a list of all the columns available and a randomizer that will shoot a number and randomly join it to the column letter.

# Check the called column for the number called.
  # Use the letter as a reference for the position in the list and search that position in all the lists of the board.

# If the number is in the column, replace with an 'x'
  # Going through the rows and using the position reference
    # Search for the number, IF it is found
      # Replace the item with an 'x'

# Display a column to the console
  # Show the items in that position represented by that letter.

# Display the board to the console (prettily)
  # Show the whole board again list by list displayed as a square.

# Initial Solution

# class BingoBoard
#   attr_reader :prev_call, :numbers_possible         #debugging reasong I should be able to call these values outside the class

#   def initialize(board)
#     @bingo_board = board #board initiated
#     @columns = ["B", "I", "N", "G", "O"]            #possible column titles to be used to find index
#     @numbers_possible = (1..100).to_a               #I thought numbers couldn't duplicate so I planned to pop them once found, I then noticed that they did, this was replaced by rand range in refactor
#   end

#   def call
#     @call_column = @columns.sample                  #save a random column name
#     @call_number = @numbers_possible.sample         #save a random number
#     @prev_call = @call_column + @call_number.to_s   #combine them for print
#     @prev_call
#   end

#   def check
#     @column_index = @columns.index(@call_column)
#     @bingo_board.each do |row|
#       if row[@column_index] == @call_number
#         row[@column_index] = 'X'
#         puts "|  #{@call_column}   |"
#         @bingo_board.each { |row| puts "|  #{row[@column_index]}   |"}
#       end
#     end
#   end

#   def display #prints with the padding and the numbers centered
#     puts "|  B   ||  I   ||  N   ||  G   ||  O   |"
#     puts "|--------------------------------------|"
#     @bingo_board.each do |row|
#       puts "|      ||      ||      ||      ||      |"
#       row.each do |number|
#         if number.to_s.size > 1
#           print "|  #{number}  |"
#         else
#           print "|  #{number}   |"
#         end
#       end
#       puts 
#       puts"|______||______||______||______||______|"
#     end
#   end






# end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board #board initiated
    @column_letters = ["B", "I", "N", "G", "O"]
  end

  def call
    @call_column = @column_letters.sample
    @call_number = rand(1..100) 
    p @call_column + @call_number.to_s 
  end

  def check
    @column_index = @column_letters.index(@call_column)
    @bingo_board.map do |row|
      row.map!.with_index do |number, index|
        number == @call_number && index == @column_index ? 'X' : number
      end
    end
  end

  def display #prints with the padding and the numbers centered
    puts "|  B   ||  I   ||  N   ||  G   ||  O   |"
    puts "|--------------------------------------|"
    @bingo_board.each do |row|
      puts "|      ||      ||      ||      ||      |"
      row.each do |number|
        number.to_s.size > 1 ? print("|  #{number}  |") : print("|  #{number}   |")
      end
      puts 
      puts"|______||______||______||______||______|"
    end
  end


end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

board_solved = board.map { |row| row.map { |number| number = "X" } }

new_game = BingoBoard.new(board)

100.times do
  new_game.call
  new_game.check
end
  new_game.display

# p new_game.numbers_possible


#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# I didn't find it difficult at all, what really helped was the fact that bingo is just a series of indices and numbers, and so it was very easy translating bingo language into pseudocode. It was great just being to write out the steps of playing a bingo game. I find that it's getting easier to write out my ideas and translate them into pseudocode, making sure I don't use programming language.


# What are the benefits of using a class for this challenge?
# The class easily contains the methods and attributes of the game neatly sorted. By creating these methods inside the class, the game can be run by initializing a game and calling its methods to run the game separately and at command. Furthermore, any future implementations can be worked on inside the class without affecting any of the outside code.

# How can you access coordinates in a nested array?
# Coordinates in  a nested array can be accessed by calling the index on and index. So for example, an array with a single element, nested inside another array--the element can be accessed through array[0][0]. Another way to access these coordinates is by iterating through arrays using methods such as #each or #map. This enables every index to be aliased by a chosen variable and in turn that variable can but run with another iterator or the index itself. This is great for performing multiple actions on nested arrays.

# What methods did you use to access and modify the array?
# I initally used each and variable assigment. So I ran an each loop and looked through the indices of the indices and if it found the value, the value was reassigned to 'X'.

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
# I found the method #with_index, to use in my refactored to code. In conjuction with the #map! method, I was able to access both the element and the index number of every array as an assigned variable, and that allowed to no only condense the each loop, but also keep everything contained within one block of code. The #with_index allows an array to be iterated through, but instead of outputting each element, it outputs each index number (i.e. 0, 1, 2, 3 etc.). It is called by attaching it to a map or collect method then supplying a block where, two variables hold the iteration of each element and the iteration of every index number.

# How did you determine what should be an instance variable versus a local variable?
# I knew that if I needed the variable to be shared among methods, it had to be an instance variable. Also, any variable that needed to be visible outside the class needed to be an instance variable.  I used local variable outside the class to be able to hold the information I would eventually pass into the class and methods. 

# What do you feel is most improved in your refactored solution?
# I feel, that condensing the check method to make it more readable and hopefully more efficient, is the biggest improvement in the code. I'm not too aware about program memory efficiency yet, but I believe the less steps a method has to take to get the output, the better. Also these improved methods cut down on the amount of instance or local variables I need therefore cutting down on the amount of memory the program is using.

