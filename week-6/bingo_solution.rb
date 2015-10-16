# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

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

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def ball_generator
    letter_array = ['B', 'I', 'N', 'G', 'O']
    letter = letter_array.shuffle.pop
    if letter == 'B'
      @ball = rand(15)
    elsif letter == 'I'
      @ball = rand(16...30)
    elsif letter == 'N'
      @ball = rand(31...45)
    elsif letter == 'G'
      @ball = rand(46...60)
    else
      @ball = rand(61...75)
    end
    puts letter + "#{@ball}"
  end

  def check_column
    @bingo_board.collect! do |columns|
      if columns.include? (@ball)
        columns[columns.index(@ball)] = ' X'; columns
      else
        columns
      end
    end
  end

  def display_board
    @bingo_board.each do |column|
      puts "-------------------------"
      puts column.each {|item| item}.join " | "
    end
  end

end

# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def ball_generator
    letter_array = ['B', 'I', 'N', 'G', 'O']
    letter = letter_array.shuffle.pop
    if letter == 'B'
      @ball = rand(15)
    elsif letter == 'I'
      @ball = rand(16...30)
    elsif letter == 'N'
      @ball = rand(31...45)
    elsif letter == 'G'
      @ball = rand(46...60)
    else
      @ball = rand(61...75)
    end
    puts letter + "#{@ball}"
  end

  def check_column
    @bingo_board.collect! do |columns|
      if columns.include? (@ball)
        columns[columns.index(@ball)] = ' X'; columns
      else
        columns
      end
    end
  end

  def display_board
    @bingo_board.each do |column|
      puts "-------------------------"
      puts column.each {|item| item}.join " | "
    end
  end

    # def create_columns
    #   b_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
    #   i_array = [16, 17, 18, 19 ,20, 21, 22, 23, 24 ,25, 26, 27, 28, 29, 30]
    #   n_array = [31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45]
    #   g_array = [46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60]
    #   o_array = [61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75]
    #   @board_array = b_array.shuffle.pop(5)
    #   @board_array += i_array.shuffle.pop(5)
    #   @board_array += n_array.shuffle.pop(5)
    #   @board_array += g_array.shuffle.pop(5)
    #   @board_array += o_array.shuffle.pop(5)
    #   @board_array
    # end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
10.times do new_game.ball_generator
new_game.check_column
end
new_game.display_board

#Reflection
