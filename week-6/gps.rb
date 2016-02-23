# Your Names
# 1) Oscar Delgadillo
# 2) Charlie Lee

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  error_counter = 3

  library.each do |food|
    if library[food] != library[item_to_make]
      error_counter += -1
    end
  end

  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  serving_size = library.values_at(item_to_make)[0]
  remaining_ingredients = num_of_ingredients % serving_size

  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

# Refactored Code

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  raise ArgumentError.new("#{item_to_make} is not a valid input") unless library.has_key?(item_to_make)

  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size

  if num_of_ingredients >= serving_size
    print "You can make #{ num_of_ingredients/serving_size } of #{ item_to_make }. "
  else
    print "You do not have enough ingredients to make #{ item_to_make }. "
  end
  
  case remaining_ingredients
    when 6 then print "You can make one cake and one cookie."
    when 5 then print "You can make one cake."
    when 1,2,3,4 then print "You can make #{ remaining_ingredients } cookies."
  end
  
  puts
  
end 

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

# What did you learn about making code readable by working on this challenge?

# I learned that it's very important. The first error counter was utterly complicated and unnecessary. It's also important to make your code readable to make updating the code easier. As it stood our code isn't very scalable, but at least you can read the parts that still need to be updated.


# Did you learn any new methods? What did you learn about them?

# We used hash#has_key? in order to determine the existence of the item in the library and if it wasn't there, an ArgumentError would be raised.


# What did you learn about accessing data in hashes? 

# I learned that it's actually very simple to access data, not only through methods, but also through calling the key.


# What concepts were solidified when working through this challenge?

# I really appreciated seeing the case flow in action and learning when it's appropriate to use as opposed to the if conditional. I also learned when it was appropriate to have one line conditional statements.