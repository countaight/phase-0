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

class Car
  attr_reader :make, :color
  
  def initialize(make, color)
    @make = make
    @color = color
    @distance_travelled = 0
    @speed = 0
    @orientation = "north"
    @pizza_compartment = []
    @pizza_counter = 0
  end
  
  def pick_up(pizza)
    @pizza_compartment << pizza
  end
# create counter that takes away pizzas hotness
# and resets each time
# if distance to drive is greater than 0.25, divide distance by 0.25 and any remainder goes into counter
  
  def counter(miles)
    while @pizza_counter >= 0.25 do
      @pizza_compartment.each do |pizza|
        pizza.hotness -= 1
      end
      @pizza_counter -= 0.25
    end
  end
  
  def drive(miles, mph=@speed)
    counter(miles)
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
    if direction == "left" || direction == "right"
      @direction = direction
    else
      raise ArgumentError.new("You can't turn that direction, son")
    end
  end
  
  def school_zone
    puts @speed
    @speed = 15
  end
  
  def status
    status_array = [@distance_travelled, @speed, @direction]
  end
  
end



# 4. Refactored Solution

class Pizza
  attr_accessor :hotness
  def initialize(toppings, crust)
    @toppings = toppings
    @crust = crust
    @hotness = 100
  end
  
  
  
end





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
p funky_car.status





# 5. Reflection



#attr_reader for distance travelled if needed!!!




