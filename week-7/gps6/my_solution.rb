# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'
#I have this data that I want to use on a second file, and I want the program to utilize the data on it

class VirusPredictor
  # create a new instance of the class VirusPredictor. will take in a state name, pop density, and pop. it will then map those variables to instance methods so they can be accessed in other parts of the program
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # calls two methods of this class, and passes them the instance methods we previously defined in initialize
  def virus_effects
    predicted_deaths
    speed_of_spread
  end


  private
  def predicted_deaths
    # predicted deaths is solely based on population density depending on density a different equation will be used to predict number of deaths. then it will print to the console
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # initialize a new local variable, based upon density, map that speed to a number of months expected to fully work through a population
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # checks for most dense first, and adds speed

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
# looking to iterate through the state data hash, accessing and running the virus_effects method on each state.
def create_report
  STATE_DATA.each do |key, value|
    # will pass me in "Alabama" [:]
    temp = VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population])
    temp.virus_effects
  end
end
create_report()
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
#   the first utilizes a string as a key, the second a series of symbols to hold integers and floats.

# What does require_relative do? How is it different from require?
#   reads in a file with a relative path, rather than an absolute path

# What are some ways to iterate through a hash?
#   each do with a |hash, key|

# When refactoring virus_effects, what stood out to you about the variables, if anything?
#   they constantly used and tried to pass back and forth, the instance variables. which was silly. as you can just call them from anywhere in the class

# What concept did you most solidify in this challenge?
#   the necessity of reading through your code and speaking out loud what the code is trying to do at each point