// As a student I want to "sum" the numbers on a list so that I can add together any amount of numbers together.
// As a student I want to get the "mean", or mathematical average from a list of numbers.
// As a student I want to get the "median", or middle number, from a set of numbers. I should be able to get a median no matter what the size of the list is.


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