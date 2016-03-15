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

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

var allRockDoves = groupSorter(ROCKDOVES);

assert(
  (commas(100) === "100"),
  "Number three digits or less should return that same number",
  "1. "
)
