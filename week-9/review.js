// Ruby to JavaScript: Group Assignor

// Pseudocode
// Input: List of names
// Output: Object with names sorted into groups

// Steps:
	// Take the names on the list and divide by the amount of names by 4
	// Create the groups using criteria of minimum four people per group, maximum 5
	// LOOP through the names and place one name one at a time into groups until they reach 4.
	// Take the remaining names and LOOP through them adding them as an extra person in the 4-person group.

var ROCKDOVES = ["Adam Pinsky", "Afaan Naqvi", "Alana Farkas", "Andrew Crowley", "Andrew Vathanakamsang", "Anna Lansfjord", "Blair White", "Brad Lindgren", "Brian Donahue", "Brittney Braxton", "Camila Crawford", "Charlie Lee", "Chunyu Ou", "Daniel Homer", "Daniel Shapiro", "David Kaiser", "David Ramirez", "Emily Osowski", "Emmet Garber", "Eric Gumerlock", "Greg Toprak", "Hanna Taylor", "Dave Hostios", "Jack Baginski", "Jaclyn Feminella", "Jasmeet Chatrath", "Jason Allen", "Jon Norstrom", "Jonathan Nicolas", "Joseph Yoo", "Joshua Lugo", "Joshua Wu", "Julia Giraldi", "Kari Giberson", "Katherine Broner", "Kevin Fowle", "Kevin Niu", "Kevin Perkins", "Leo Kukhar", "Li-Lian Ku", "Erica Lloyd", "Marita Deery", "Michael Verthein", "Milorad Felbapov", "Brian Mosley", "Nick Russo", "Noah Schutte", "Oscar Delgadillo", "Ryan Dempsey", "Ryan Wilkins", "Sami Zhang", "Sean Norton", "Shyh Hwang", "Sydney Rossman-Reich", "Theo Paul", "Tomasz Sok", "Wesley El-Amin"];

// Initial Code

// function groupSorter(list) {
// 	var groups = {}
// 	for (var i = 1; i < (list.length/4); i++) {
// 		groups["Group "+i]=[];
// 	}
// 	for (index in list) {
// 		var groupID = "Group " + ((index % (Math.floor(list.length/4)))+1);
// 		groups[groupID].push(list[index]);
// 	}
// 	return groups;
// }

// Refactor

function groupSorter(list) {
	var groups = {}
	for (var i = 1; i < (list.length/4); i++) {
		groups["Group "+i]=[];
	}
	for (index in list) {
		var groupID = "Group " + ((index % (Math.floor(list.length/4)))+1);
		groups[groupID].push(list[index]);
	}
	return groups;
}



// Driver Test Code

phaseZero = groupSorter(ROCKDOVES)

console.log("Groups should be greater than or equal to four");
var peopleInGroup = 0
for (var prop in phaseZero) {
	console.log(prop, "--", phaseZero[prop].length >= 4);
	peopleInGroup += phaseZero[prop].length;
} 

console.log("Length of ROCKDOVES is the same as summing all the groups");
console.log(ROCKDOVES.length === peopleInGroup);

// Reflection

// What concepts did you solidify in working on this challenge? 
// Looping through arrays, creating objects, and then running loops to create objects from arrays.


// What was the most difficult part of this challenge?
// The most difficult part was finding the logic in JavaScript. Although JavaScript is very straight-forward, it's very strict as to what it expects and so methods are something difficult to find.


// Did you solve the problem in a new way this time?
// Sort of, the creation of groups was different, this time I opted for a minimum group of 4 to ensure better participation, but also created less 5 person groups. The basic sorting mechanism of placing one person in each group consecutively was also similar, but implemented in a different way due to JavaScripts limitations. I ended up assigning a group number based on the modulus of the index in the list to the amount of possible groups so that each person was essentially assigned a number sequentially and then placed in that property of the group object.


// Was your pseudocode different from the Ruby version? What was the same and what was different?
// The basic idea of sorting was similar, however, I felt my Ruby pseudocode was more descriptive because I can brainstorm different outcomes and be confident that I will find a method to help. Meanwhile, in JavaScript I'm not too confident in finding a built-in method so I described the process in a more logical step-by-step way in case I had to build my own functions and loops.
