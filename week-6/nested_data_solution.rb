# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]



# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
number_array.each do |number|
  if number.is_a?(Array)
      number.each do |value|
        p value
      end
  else
        p number
  end
  puts
end

number_array.flatten!.each { |number| p number }

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

coverted = startup_names.flatten

p coverted.map! { |word| word + "ly"}

# Reflection

# What are some general rules you can apply to nested arrays?

# It's important to clarify when one sub-array begins and another ends, this will make searching through the array a lot easier. Also, when wanting to access array multiple indices can be used to search through nested arrays, for example, in array = [["here", "there"], "and", ["everywhere"]], the word "here" can be accessed through array[0][0], because at the first index we have the array, and at the first index there is the word "here".


# What are some ways you can iterate over nested arrays?

# For the purposes of iterating through every element inside arrays and sub-arrays, it can be easier to flatten the array first, removing all the nesting, and then iterating through that, or when each sub-array needs to be accessed differently, a conditional statement regarding arrays can be used to then iterate through those.


# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

# We found the flatten method, which allows nested arrays to be treated as if they are only part of one array, and no sub-arrays, this allowed us to access all the contents of the array without using conditional statements.