# Concatenate Two Arrays

# I worked on this challenge by myself.


# Your Solution Below

def array_concat(array_1, array_2)
  new_array = Array.new
  array_1.each do |i|
  	new_array << i
  end
  array_2.each do |i|
  	new_array << i
  end
  p new_array
end
