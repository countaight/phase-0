# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require and require_relative are built in methods that accept strings as arguments. require tries to search for a specific Ruby library (gem). require_relative allows you to search for an actual file with code in it.
#

require_relative 'state_data'

class VirusPredictor

  # Initializes an instance of the class. Defines three separate instance variables, based on the data for an individual state
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Runs the predicted deaths and speed of spread for the instance. These are both instance methods within this class.
  def virus_effects
    # predicted_deaths(@population_density, @population, @state)
    # speed_of_spread(@population_density, @state)
    predicted_deaths
    speed_of_spread
  end

  private

  # This method takes the value of population density. Based on that value, it calculates the number of deaths. It will print the number of deaths in that state to the console.
  def predicted_deaths
    # predicted deaths is solely based on population density
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end
    case @population_density
      when 0 .. 49 then number_of_deaths = (@population * 0.05).floor
      when 50 .. 99 then number_of_deaths = (@population * 0.1).floor
      when 100 .. 149 then number_of_deaths = (@population * 0.2).floor
      when 150 .. 200 then number_of_deaths = (@population * 0.3).floor
      else number_of_deaths = (@population * 0.4).floor
    end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  # This method calculates how many months it will take for the virus to spread across the state. Currently, it's based entirely off the population density. It puts the calculated number of months to the console.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # speed = 0.0
    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

    case @population_density
      when 0 .. 49 then speed = 2.5
      when 50 .. 99 then speed = 2
      when 100 .. 149 then speed = 1.5 
      when 150 .. 200 then speed = 1
      else speed = 0.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


# Pseudocode
# 1. Take the STATE_DATA hash. We need to access each key with that hash, as well as the value hashes for each of those keys.

STATE_DATA.each do |state,data|
  state_report = VirusPredictor.new(state,data[:population_density],data[:population])
  state_report.virus_effects
end


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
  # The top most hash uses rocket notation which allows strings, numbers, etc to be the keys for the hash. The nested hash uses symbol notation which simultaneously creates unique symbols for the keys of the hash.

# What does require_relative do? How is it different from require?
  # require_relative allows files to be loaded relative to the file being worked on, this can include test files or other files with code in it. It's different from require, in that require looks for gems with methods inside the Ruby library.

# What are some ways to iterate through a hash?
  # With the #each method we can take each element in the hash and access it through its keys, including any nested hashes in there.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
  # At first something appeared very redundant about the way it was calling the other methods. We then figured that because instance variabls are accessible to ANY method inside the class, there was no need to pass them off as arguments.

# What concept did you most solidify in this challenge?
  # The importance of keeping code DRY by taking advantage of the instance variable scope, including in such cases as the case flow control. It also presented the opportunity to work with private methods and see them play out in a legitimate situation.