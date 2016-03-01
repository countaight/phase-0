// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var name = "Oscar";
console.log(name, "is cool!");


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
// Triangle
var hashtag = "#";
while(hashtag.length <= 7) {
	console.log(hashtag);
	hashtag += "#";
}

// Functions

var favoriteFood = function() {
prompt("What's your favorite food, mate?");
console.log("Hey! That's my favorite too!");
}

// Complete the `minimum` exercise.

function min(num1, num2) {
	if(num1 < num2 || num1 == num2) {
		return num1;
	} else {
		return num2;
	}
};

console.log(min(0, 10));
console.log(min(0, -10));
console.log(min(10, 10));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
	name: "Oscar",
	age: 29,
	favoriteFoods: ["cochinita pibil", "carne en su jugo", "posole"],
	quirk: "I can do finger splits"
};

console.log(me.favoriteFoods[1]);