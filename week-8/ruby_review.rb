# Create a Car Class from User Stories


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode
# Create a new car and set the make and color
# Add ability to set a distance in miles(floats) that will determine the distance travelled.
# Add an odometer to track miles per hour. 
# Add ability to turn the vehicle.
# Add ability to accelerate by taking input and comparing it to the current speed to increase.
# Add ability to decelerate by taking input and comparing it to the current speed to decrease.
# Add calculator to keep track of miles travelled.
# Add ability to stop the car completely even if abruptly, sending the driver flying through the windshield.
# Add ability to see the latest action of the car carrying a pizza.



# 3. Initial Solution

# class Car
#   attr_reader :make, :color, :pizza_compartment
  
#   def initialize(make, color)
#     @make = make
#     @color = color
#     @distance_travelled = 0
#     @speed = 0
#     @orientation = "north"
#     @pizza_compartment = []
#   end

#   def drive(miles, mph=@speed)
#     @distance_travelled += miles
#     @speed = mph
#   end
  
#   def accelerate(mph)
#     @speed += mph
#   end
  
#   def decelerate(mph)
#     @speed -= mph
#   end
  
#   def stop
#     @speed = 0
#   end
  
#   def turn(direction)
#     if direction == "left" || direction == "right"
#       @direction = direction
#     else
#       raise ArgumentError.new("You can't turn that direction, son")
#     end
#   end
  
#   def school_zone
#     puts @speed
#     @speed = 15
#   end
  
#   def log
#     @distance_travelled
#   end
  
#   def pick_up(pizza)
#     @pizza_compartment << pizza
#   end

#   def deliver
#   	@pizza_compartment.shift
#   end
  
# end

# class Pizza
#   attr_accessor :hotness, :toppings, :crust
#   def initialize(toppings, crust)
#     @toppings = toppings
#     @crust = crust
#     @hotness = 100
#   end
  
  
  
# end


# 4. Refactored Solution
 
class Car
  attr_reader :make, :color, :pizza_compartment
  
  def initialize(make, color)
    @make = make
    @color = color
    @distance_travelled = 0
    @speed = 0
    @orientation = "north"
    @pizza_compartment = []
  end

  def drive(miles, mph=@speed)
    @distance_travelled += miles
    @speed = mph
  end
  
  def accelerate(mph)
    @speed += mph
  end
  
  def decelerate(mph)
    @speed -= mph
  end
  
  def stop
    @speed = 0
  end
  
  def turn(direction)
    raise ArgumentError.new("You can't turn that direction, son") unless direction == "left" || direction == "right"
    @direction = direction
  end
  
  def school_zone
    puts "Your current speed is #{@speed}mph."
    @speed = 15
  end
  
  def log
    @distance_travelled
  end
  
  def pick_up(pizza)
    @pizza_compartment << pizza
  end

  def deliver
  	@pizza_compartment.shift
  end

end

class Pizza
  attr_accessor :toppings, :crust
  def initialize(toppings, crust)
    @toppings = toppings
    @crust = crust
  end
  
  
  
end 
  
  
# end




# 1. DRIVER TESTS GO BELOW THIS LINE

funky_car = Car.new("Nissan", "blue")
funky_car.drive(0.25, 25)
funky_car.stop
funky_car.turn("right")
funky_car.drive(1.5, 35)
funky_car.school_zone
funky_car.drive(0.25)
funky_car.stop
funky_car.turn("left")
funky_car.drive(1.4, 35)
funky_car.stop
p "You have travelled #{funky_car.log} miles"
funky_car.pick_up(Pizza.new("Pepperoni","thin"))
funky_car.pick_up(Pizza.new("Sausage","thick"))
p funky_car.pizza_compartment
funky_car.deliver
puts "Delivering the pepperoni first in, leaves the sausage pizza"
puts funky_car.pizza_compartment[0].toppings == "Sausage"





# 5. Reflection

# What concepts did you review or learn in this challenge?

# I learned composition, having one class interact with another without needing to know how the other one does its job. By having classes work independently of each other you minimize convoluted errors but also make your code more DRY and readable.


# What is still confusing to you about Ruby?

# SO far the only thing that is really confusing me is knowing which "syntatic sugar" is more useful, which is more appropriate, and how do I use to to make my code faster. As of yet, I have not idea how to measure the speed of my program, or how I would go about improving performance.

# What are you going to study to get more prepared for Phase 1?

# I am going to continue using The Well-Grounded Rubyist to elaborate on some topics like modules, lamdas, and procs. I also intend on looking up regular expressions and their uses. Finally, I would like to delve deeper into the use of recursion.






