/*
Gradebook from Names and Scores

I worked on this challenge [with: Ryan Wilkins]
This challenge took me [1] hours.

You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]

var gradebook = {}

// for (var i = 0; i < students.length; i++) {
//   gradebook[students[i]] = {};
// };





// __________________________________________
// Write your code below.


for (var i = 0; i < students.length; i++) {
  gradebook[students[i]] = {};
};

// for (var i = 0; i < students.length; i++) {
//   gradebook[students[i]]["testScores"] = scores[i];
// };

gradebook["addScore"] = function (name, score) { // Push value of score into the testScore property inside name property as student
  gradebook[name]["testScores"].push(score);
};

gradebook.getAverage = function(name) {
  return average(gradebook[name]["testScores"]);
};

// function average(array) {
//   var avg = 0;
//   for (var i = 0; i < array.length; i++) {
//     avg += array[i];
//   }
//    avg = avg / array.length;
//    return avg;
// }



// __________________________________________
// Refactored Solution


// for (var index in students) {
//   gradebook[students[index]] = {};
// }

for (var index in students) {
  gradebook[students[index]]["testScores"] = scores[index];
}


function average(array) {
 var avg = array.reduce(function(prevValue, currentValue, currentIndex, array) {
   return prevValue + currentValue;
 }, 0)/array.length;
  return avg;
}

// or

function average(array) {
 var avg = array.reduce( (prev, curr) => prev + curr )/array.length;
  return avg;
} //doesn't work in node



// __________________________________________
// Reflect


// What did you learn about adding functions to objects?

// You can add functions much in the same way you add properties and values, with bracket notation or dot notation followed by the assinging symbol '=' and then the function.


// How did you iterate over nested arrays in JavaScript?

// We initially used a for loop that used a variable i as a counter that increased after every iteration, and stopped when it reached the lenght of the array. Through every iteration the variable lent itself as an index number for the elements in the array thus giving us the ability to call each element and assign it as a property. When we refactored with opted for a for(in) loop which allows us to condense the counter expression by naving each element (in our case we named it index) inside the array.


// Were there any new methods you were able to incorporate? If so, what were they and how did they work?

// We incorporated the reduce function which is very similar to the reduce/inject function in Ruby. We furthered condensed the code by using an arrow notation.




// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)