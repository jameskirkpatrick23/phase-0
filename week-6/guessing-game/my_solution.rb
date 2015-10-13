# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode
  # I am looking to make a game that takes in an integer, then takes in a series of user inputs and returns one of three states. High, Low, or Correct. Furthermore, I will need to have some way of checking the state of the game to see if it is done, and thereby end the subroutine or print a congrats message
# Input: the answer, and user guesses
# Output: high, low, or correct
# Steps:
    # Initialize
    #   make answer into an instance variable
    # Guess method
    #   take the users input and put it into an @guess instance variable
    #   Then do some kind of comparison between answer and guess to see if they are
    #     the same
    #     if not then determine if the guess is higher or lower than the answer
    #       return the symbol for higher or lower accordingle
    #     if they are the same then we change the game state to complete
    #       and return some kind of happy message to the user
    #       also change the guess state to correct
    # Solved method
    #   takes the current state of the game and checks to see if the guess was = to answer
    #     if so then change to solved (true)
    #     if not then remain unsolved (false)


# Initial Solution

class GuessingGame
  def initialize(answer)
    #start by making answer into an instance variable so that we can use it later
    @answer = answer
  end

  def guess(num)
    #make num (user inputted number) into the @guess instance variable
    @guess = num
    #check to see if the puzzle is already solved based upon @guess and @answer
    if !solved?
      #only go into this if the puzzle has not been solved yet
      #return appropriate symbols
      if @guess < @answer
        :low
      else
        :high
      end
      #if already solved then return correct for the guess
    else
      :correct
    end
  end

  def solved?
    #check to see if the guess is = to the answer
    @guess == @answer
  end
end


# Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
  # an instance variable is almost lke the value of an attribute of a real object, while the method is an action that the real object can take. for example, a coin has 2 sides. one of which can be up at a given time if it is resting face down. the method that coin could take is flipping, yet the actual result of that flip is an instance variable

# When should you use instance variables? What do they do for you?
  # You should use instance variables when you want to be able to pass that variable onto other methods. They allow you to store the actual result of a method to then be passed through to other class methods

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
  # flow control is basically like seeing a waterfall. the water will cascade downwards. in order to change the flow control, you have to change the direction the water can flow by adding a rock outcropping to split the stream, or something like that. Similar to using if statements to fork the direction of the logic chains in programming. I relaly didn't have any struggles in this challenge

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
  # now this is an interesting question. I really am not sure why we are required to return symbols. I would assume it is due partially to looks, partially to the speed at which symbols are accessed as compared to strings, and also due to the fact that you cannot change a symbol once it is created.