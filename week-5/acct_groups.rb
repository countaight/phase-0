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

def acct_group(name_list)
	if name_list.size % 5 == 0
		available_groups_array = (1..name_list.size/5).to_a
	else
		available_groups_array = (1..name_list.size/5 + 1).to_a
	end
	groups_hash = Hash.new
	while name_list.size > 0
		available_groups_array.each do |group|
			(groups_hash[group] ||= []) << name_list.pop if name_list[0] != nil
		end
	end
	groups_hash
end



# Refactor

def acct_group(name_list)
	rand_name_list = name_list.shuffle
	available_groups_array = (1..(name_list.size/5.to_f).ceil).to_a
	groups_hash = Hash.new
	while rand_name_list.size > 0
		available_groups_array.each do |group|
			(groups_hash["Group #{group}"] ||= []) << rand_name_list.shift if rand_name_list.first != nil
		end
	end
	groups_hash
end

def find_group(group_list, name)
	found_group = group_list.values.detect { |group| group.include?(name)}
	group_number = group_list.key(found_group)
	group_number
end

def delete_person (group_list, name)
	if find_group(group_list, name) != nil
		group_list[find_group(group_list, name)].delete(name)
		group_list.each do |num, group|
			p "#{num} -- #{group}"
		end
	else
		p "I'm sorry, #{name} is not present."
	end
end

rock = acct_group(test_list)
doves = acct_group(test_list)
p rock == doves #should be false, from random assigned groups
rock.each { |num, group| p group.size >= 3 && group.size <= 5 } #should prove true for all groups
p find_group(rock, "Oscar Delgadillo")
delete_person(rock, "Oscar Delgadillo")
delete_person(rock, "Oscar Delgadillo") #should print that Oscar Delgadillo is not present


# What was the most interesting and most difficult part of this challenge?

## The most interesting part of the challenge was trying to figure out how to logically and mathematically sort the group without having a group less than 3. The most difficult part came when it came to figuring out what would make the loops, and conditional statements work. Also not getting caught up in trying to perfect every detail was very difficult, I found myself spending too much time trying to perfect the code.


# Do you feel you are improving in your ability to write pseudocode and break the problem down?

## Given the surprising amount of time it took to me get the initial working code based off of my pseudocode, I'd say I'm definitely getting a little better at not only creating it, but making sure the initial pseudocode is realistic and possible with the methods I know.


# Was your approach for automating this task a good solution? What could have made it even better?

## By creating the groups first and then pushing the students one by one into groups also one by one, it made sure it was mathematically impossible to ever get a group less than 3. I think this is a good solution and an efficient one. One thing that could've made it better, would be the ability to alter groups easily.


# What data structure did you decide to store the accountability groups in and why?

## I ended up using a hash as my data structure, because I think it is easier to search for key and values than it is to iterate between arrays.


# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

## I learned about some easy and descriptive methods that can replace longer lines of code such as rounding up with #ceil, or using #detect to find content inside arrays. I also learned that it's very important to read the Ruby docs very carefully, I was trying to use a method without reading correctly that is only had a very limited scope of searching. 