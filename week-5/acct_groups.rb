# Pseudocode

# Input: A list of names
# Output: A list of groups with people divided amongst it

# Mininum requirements: A group must contain 4-5 people but no less than 3.

# Possible future implementations: Randomly sorted groups, ability to save the groups assigments, changing group if a person leaves and group falls under 3.

# Steps:
# Determine the number of groups by dividing the list by five.
# A group is created for the remainder as well.
# Take each name and place it in a group. 
#   One name to a different group and repeat until the names run out.

test_list = ["Adam Pinsky", "Afaan Naqvi", "Alana Farkas", "Andrew Crowley", "Andrew Vathanakamsang", "Anna Lansfjord", "Blair White", "Brad Lindgren", "Brian Donahue", "Brittney Braxton", "Camila Crawford", "Charlie Lee", "Chunyu Ou", "Daniel Homer", "Daniel Shapiro", "David Kaiser", "David Ramirez", "Emily Osowski", "Emmet Garber", "Eric Gumerlock", "Greg Toprak", "Hanna Taylor", "Dave Hostios", "Jack Baginski", "Jaclyn Feminella", "Jasmeet Chatrath", "Jason Allen", "Jon Norstrom", "Jonathan Nicolas", "Joseph Yoo", "Joshua Lugo", "Joshua Wu", "Julia Giraldi", "Kari Giberson", "Katherine Broner", "Kevin Fowle", "Kevin Niu", "Kevin Perkins", "Leo Kukhar", "Li-Lian Ku", "Erica Lloyd", "Marita Deery", "Michael Verthein", "Milorad Felbapov", "Brian Mosley", "Nick Russo", "Noah Schutte", "Oscar Delgadillo", "Ryan Dempsey", "Ryan Wilkins", "Sami Zhang", "Sean Norton", "Shyh Hwang", "Sydney Rossman-Reich", "Theo Paul", "Tomasz Sok", "Wesley El-Amin"]

# def acct_group(name_list)
# 	if name_list.size % 5 == 0
# 		group_array = (1..name_list.size/5).to_a
# 	else
# 		group_array = (1..name_list.size/5 + 1).to_a
# 	end
# 	group_hash =  Hash.new
# 	while name_list.size > 0
# 		group_array.each do |x|
# 			(group_hash[x] ||= []) << name_list.pop if name_list[0] != nil
# 		end
# 	end
# 	group_hash.each do |key, value|
# 		p "Group #{key} has #{value}"
# 	end
# end



# Refactor

def acct_group(name_list)
	group_array = (1..(name_list.size/5.to_f).ceil).to_a
	group_hash =  Hash.new
	while name_list.size > 0
		group_array.each do |x|
			(group_hash[x] ||= []) << name_list.pop if name_list[0] != nil
		end
	end
	group_hash.each do |key, value|
		p "Group #{key} has #{value}"
	end
end

p test_list.reverse
acct_group(test_list)