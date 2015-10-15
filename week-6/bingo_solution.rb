# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:
=begin
  MVP
    board of nested arrays
    fill each index in with a random number between 1-100
    probably utilize a nested .each loop

=end

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution
#currently not recognizing board as array
  # class BingoBoard

  #   def initialize(board)
  #     @bingo_board = board
  #   end

  #   def random_number
  #     @number = rand(100)
  #     p @number
  #   end

  #   def check_for_number
  #     @bingo_board.collect! do |thing| #iterate over a double array
  #       if thing.include?(@number) #thing is a single array (the column) so we are checking to see if the column contains @number
  #         thing[thing.index(@number)] = "x"; thing #find the index of the element that contains it, then replace it with x
  #       else
  #         thing #otherwise leave it
  #       end
  #     end
  #   end

  #   def display_board
  #     puts ""
  #     puts "   B      I      N      G      O      "
  #     @bingo_board.each do |column|
  #       puts ""
  #       puts "----------------------------------"
  #       column.each do |item|
  #         print "| #{item} | "
  #       end
  #     end
  #     2.times do |x|
  #       puts ""
  #     end
  #   end

  # end

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Refactored Solution
=begin
  first and foremost we have to build the board.

  at the top we make B I N G O
  then we have a 5x5 board of nested arrays
  the first item in each row (B) must be between 1-15
  the second item in each row (I) must be between 16-30
  the third item in each row (N) must be between 31-45
    THIRD ITEM IN N IS FREE SPACE
  the fourth item in each row (G) must be between 46-70
  the final item in each row (O) must be between 71-85

  no row may have more than 1 of the same number

if |column| = 0 then its a b, ==1 then I, etc.
  can utilize a .each then |row, column|
  and add in the numbers accordingly


  MAKE AN ARRAY FOR EACH COLUMN WITH FULL RANGE OF NUMBERS
  SHUFFLE IT
  THEN DELETE ALL BUT 5 (and substitute [2] for FREE in case of N)

  Maybe utilize B I N G O as all attr methods to access their data as a read for .contain or something (refactored of course)
=end
class BingoBoard
  def initialize
    @bingo_board = Array.new(5) {Array.new(5)}
  end

  def make_rows
    @bingo_board.each do  column|
      column.each do |index|
        if index.index == 0
          index = rand(15)
        elsif index.index == 1
          index = prng.rand(16..30)
        elsif index.index == 2
          index = prng.rand(31..45)
        elsif index.index == 3
          index = prng.rand(46..70)
        elsif index.index == 4
          index = prng.rand(71..85)
        end
      end
    end
  end

  def display_board
      puts ""
      puts "   B      I      N      G      O      "
      @bingo_board.each do |column|
        puts ""
        puts "----------------------------------"
        column.each do |item|
          print "| #{item} | "
        end
      end
      2.times do |x|
        puts ""
      end
  end

end
#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
  # board = [[47, 44, 71, 8, 88],
  #         [22, 69, 75, 65, 73],
  #         [83, 85, 97, 89, 57],
  #         [25, 31, 96, 68, 51],
  #         [75, 70, 54, 80, 83]]

  # new_game = BingoBoard.new(board)
  # 10.times do |x|
  #   new_game.random_number
  #   new_game.check_for_number
  # end
#   new_game.display_board
board = BingoBoard.new
board.make_rows
board.display_board


#Reflection