// As a student I want to "sum" the numbers on a list so that I can add together any amount of numbers together.
// As a student I want to get the "mean", or mathematical average from a list of numbers.
// As a student I want to get the "median", or middle number, from a set of numbers. I should be able to get a median no matter what the size of the list is.

// ASSIGNMENT 7.8 JavaScript Telephone 

// Andrew Crowley

// Release 4: Refactor and Translate to User Stories

// Here we are trying to do some basic math.  The code below will take a group of numbers, however many, and all them all up to produce the sum.


// var numberArray = [2,2,3,4,7,6,100,8];
// function sum (numbers) {var total = numbers.reduce(function(a,b) {return a + b;});
//   console.log(total);
//   // var mean = total/numberArray.length;
//   // console.log(total);
// };
// sum(numberArray);

// // This next section of code adds up the group of numbers (like above), gets the total (sum) and divides that sum by the amount of numbers in the original group.  In this case there are eight numbers in the group.  This is called the "average" or "mean".

// function mean (numbers) {
//   var arraySize = numbers.length;
//   var total = numbers.reduce(function(a,b){
//     return a + b;
//   });
//   var mean = total/arraySize
//   console.log(mean);
//   }
// mean(numberArray);

// // The code below is attempting to find the number in the middle of a group of numbers.  It first arranges the numbers in numerical order.  If, like in this case, there is no "middle" number because there are an even number of numbers, the median is the mean (average) of the middle two values.  

// function median (numbers) {
//   numbers.sort(function (a,b){return a-b;} );
//   var centerIndex = Math.floor(numbers.length/2)
//   if(numbers.length % 2)
//     return numbers[centerIndex];
//   else 
//     return (numbers[centerIndex-1] + numbers[centerIndex])/2;
//   }
// console.log(median(numberArray));

// Tests 1, 4, 7, 8, and 9 passed. Tests 2, 3, 5, 6 did not pass.
// I believe the test failed because the functions did not return anything.

// We passed tests:
// 1 - sum is a function
// 4 - mean is a function
// 7 - median is a function
// 8 - median returns the median value from an array with an odd length of elements
// 9 - media returns the median value from an array with an even length of elements

// We unfortunately did pass the following:
// 2 - sum returns the value from an array with an odd length of elements
// 3 - sum returns the value from an array with an even length of elements
// Looking at the code I noticed that there was no return for the value, there was only a console.log statement. I don't think JavaScript has implicit return.
// 5 - mean returns the value from an array with an odd length of elements
// 6 - mean returns the value from an array with an even length of elements
// These had the same problem as the previous function. There is a return in there, but that returns it to the last function that called it, but it wasn't returned at the end of the mean function.