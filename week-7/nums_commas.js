// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Alana Farkas.

// Pseudocode
// Create a function separateComma. It should accept an integer as an argument and return a comma-separated integer as a string.
// Input: Integer
// Output: String
// Steps: IF integer is 3 digits or less, return number
// ELSE IF integer is greater than 3 digits, transform integer into an array. LOOP through array and add a comma after every third digit

// Initial Solution

// function commas(number) {
//   var commasNeeded = Math.floor(String(number).length/3);
//   var digitArray = String(number).split("").reverse();
//   if (String(number).length <= 3) {
//     return String(number);
//   } else {
//   	if (String(number).length == 4) {
//       digitArray.splice(3, 0, ",");;
//     } else {
//     	digitArray.splice(3, 0, ",");
//     	var commaPosition = 7;
//     	for (var i = 0; i < commasNeeded - 1; i++) {
//     		digitArray.splice(commaPosition, 0, ",");
//     		commaPosition += 4;
//     	}
//     }
//   }
//   if (String(number).length % 3 === 0) {
//   	digitArray.reverse().shift();
//   	return digitArray.join("");
//   } else {
//   	return digitArray.reverse().join("");
//   }
// };


// Refactored Solution

function commas(number) {
	var numberString = String(number);
  var commasNeeded = Math.floor(String(number).length/3);
  var digitArray = numberString.split("").reverse();
  if (numberString.length <= 3) {
    return numberString;
  } else {
  	for (var i = 3; i <= commasNeeded * 4; i+=4) {
  		digitArray.splice(i, 0, ",");
	  };
  }
  
  if (numberString.length % 3 === 0) {
  	digitArray.reverse().shift();
  	return digitArray.join("");
  } else {
  	return digitArray.reverse().join("");
  }
}


// Your Own Tests (OPTIONAL)

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (commas(100) === "100"),
  "Number three digits or less should return that same number",
  "1. "
)

assert(
  (commas(1000) === "1,000"),
  "Number 4 digits should return with one comma.",
  "2. "
)

assert(
  (commas(12345678956) === "12,345,678,956"),
  "Number with more than 4 digits and digits not divisible by 3.",
  "3. "
)

assert(
  (commas(123456789565) === "123,456,789,565"),
  "Number with amount of digits divisible by 3 should omit the last comma.",
  "4. "
)

assert(
	(commas(12312312312312312) === "12,312,312,312,312,312"),
	"Longest number possible in JavaScript.",
	"5. ")

// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
	// It was a bit jarring at first, not having the fluidity that Ruby does when it comes to defining methods, or even having the necessary methods. I used a slightly different approach than the first time. One thing that I felt JavaScript offered was a more direct logic flow.


// What did you learn about iterating over arrays in JavaScript?
	// Iterating through arrays is very similar to Ruby, but again for us it made more sense to use a loop. JavaScript loops seem a little clearer in the sense that you can define a variable as a counter, and then use that variable to compare it to something else, and finally, alter the variable. This is done in one line between parenthesis and it is incredibly easy to implement.


// What was different about solving this problem in JavaScript?
	// While Ruby focuses on creating classes or different methods that could eventually talk to each other, JavaScript focuses on being able to define functions inside functions, this means that a particular built-in method can be altered inside another function for the purposes of sending information through. While we couldn't really take advantage of that, not the experience yet, we aimed for more direct ways of calling methods step by step.


// What built-in methods did you find to incorporate in your refactored solution?
	// We didn't incorporate any new built-in methods in refactoring, but we did clean it up by making clear which variables we were going to set up. We were also able to apply a bit more logic to the loops in order to condense them further. For example, realizing that using a separate variable to track the position of the comma was superfluous once we got the hang of using the for loop's arguments.