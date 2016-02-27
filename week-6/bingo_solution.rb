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
      # Make sure number can't be used again with another letter

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

