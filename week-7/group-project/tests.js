
// Add the finished solution here when you receive it.

// ASSIGNMENT 7.8 JavaScript Telephone 

// Andrew Crowley

// Release 4: Refactor and Translate to User Stories

// Here we are trying to do some basic math.  The code below will take a group of numbers, however many, and all them all up to produce the sum.


var numberArray = [2,2,3,4,7,6,100,8];
function sum (numbers) {var total = numbers.reduce(function(a,b) {return a + b;});
  console.log(total);
  // var mean = total/numberArray.length;
  // console.log(total);
};
sum(numberArray);

// This next section of code adds up the group of numbers (like above), gets the total (sum) and divides that sum by the amount of numbers in the original group.  In this case there are eight numbers in the group.  This is called the "average" or "mean".

function mean (numbers) {
  var arraySize = numbers.length;
  var total = numbers.reduce(function(a,b){
    return a + b;
  });
  var mean = total/arraySize
  console.log(mean);
  }
mean(numberArray);

// The code below is attempting to find the number in the middle of a group of numbers.  It first arranges the numbers in numerical order.  If, like in this case, there is no "middle" number because there are an even number of numbers, the median is the mean (average) of the middle two values.  

function median (numbers) {
  numbers.sort(function (a,b){return a-b;} );
  var centerIndex = Math.floor(numbers.length/2)
  if(numbers.length % 2)
    return numbers[centerIndex];
  else 
    return (numbers[centerIndex-1] + numbers[centerIndex])/2;
  }
console.log(median(numberArray));


// __________________________________________
// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)

