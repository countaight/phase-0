# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Initalize new list with items and respective quantities
  # set default quantity as 0 for each item
  # print the list to the console [can you use one of your other methods here?] call print a list method that we will create
# output: [what data type goes here, array or hash?] Return a hash of the grocery list with items as keys and quantities as values

def create_list(items)
  item_array = items.split
  grocery_hash = Hash.new
  item_array.each do |i|
    grocery_hash[i] = 1
  end
  p grocery_hash
end

cool_groceries = create_list("apples bananas cake")
p cool_groceries

# Method to add an item to a list
# input: list, item name and optional quantity
# steps: If there is no list, than call method to create one
# Check if item is already on list, increase quantity if it exists
# Add item along with option associated quantity
# output: Print revised list with added item

def add_item(list_name, item_name, quantity = 1)
  if list_name.has_key?(item_name)
    list_name[item_name] += quantity
  else
    list_name[item_name] = quantity
  end
end

add_item(cool_groceries, "strawberries", 4)
p cool_groceries

# Method to remove an item from the list
# input: List, item name
# steps: Check if item is already on the list, delete item
# If item doesn't exist, print error message
# Print out revised list
# output: Revised list with deleted items

def remove_item(list_name, item_name)
  if list_name.has_key?(item_name)
    list_name.delete(item_name)
  else
    p "Item is not on the list"
  end
end

remove_item(cool_groceries, "apples")
p cool_groceries

# Method to update the quantity of an item
# input: Item, quantity
# steps: Check if item is already on the list, if it is revise quantity to new quantity input
# If it doesn't exist, add the item along with the quantity
# output: Revised list with items along with new associated quantities

def update_item(list_name, item_name, quantity)
    list_name[item_name] = quantity if list_name.has_key?(item_name)
end

update_item(cool_groceries, "spinach", 2)
p cool_groceries

# Method to print a list and make it look pretty
# input: List
# steps: Take every item and quantity and print with a colon in between, 1 item on each row
# output: Revised pretty list

def pretty_list(list_name)
  list_name.each do |key, value|
    p "#{key}: #{value}"
  end
end

pretty_list(cool_groceries)

# Reflections

# It's very easy to try and use language-specific words, but really trying to keep it general helps set an open mind about the possible solutions.

# Arrays are very quick to create and easy to manipulate, but they have no way of tracking the indices. Hashes can store a list more representative of a grocery list, with names and quantities, but in my opinion can be a bit tricky to create.

# A method returns the last statement it was supplied, unless something else is explicitly stated to return, either by using return or p, or if no last statement is given, it won't return anything.

# You can pass, arrays, strings, and other objects including ones created by other methods.

# You can pass information between methods by saving a returned value inside a local variable and passing that on.

# The idea of keeping the code DRY is really taking more shape, there are some obvious situations, but there are also some not so obvious, so it's good to be exposed to different types of methods, and ways of using those methods. I'm not quite sure what is another way of passing information between methods, I'm curious to find out more about that.