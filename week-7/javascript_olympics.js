 // JavaScript Olympics

// I paired [with: Tomasz ] on this challenge.

// This challenge took me [1.5] hours.


// Warm Up

// Bulk Up


var sarah = {
  name: "Sarah Hughes",
  event: "Ladies Track"
}
var oscar = {
  name: "Oscar Delgadillo",
  event: "Soda Drinking"
}

var arrayOfAthletes = [sarah, oscar]

function addWin(array) {
  for(var i = 0; i < array.length; i++) {
    array[i].win = function() {
      console.log(this.name, 'has won the', this.event);
    };
  }
}

addWin(arrayOfAthletes);
oscar.win();


// Jumble your words

var jumble = "!sdrow ruoy elbmuJ";

// function reverzor(string) {
//   var letterArray = string.split("");
//   var unjumble = letterArray.reverse().join("");
//   return unjumble
  
// };

function reverzor(string) {
  var unjumble = string.split("").reverse().join("");
  return unjumble;
};

console.log(reverzor(jumble));



// 2,4,6,8

var nums = [1,2,3,4,5,6,7,8,9,10]
var evenNums = []

function evens(array){
  for(var i = 0; i < array.length; i++){
    if (array[i] % 2 === 0){
      evenNums.push(array[i]);      
    };
  }
  return evenNums;
}
console.log(evens(nums));


// "We built this city"

function Athlete(name, age, sport, quote){
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection


// What JavaScript knowledge did you solidify in this challenge?
  // Object contruction was definitely new to me, it reminded me of Ruby classes in a way. It also reinforced my knowledge of loops in JavaScript, and how powerful and flexible they can be. For example, in a for a loop, the three statements in the for loop argument can be manipulated in multiple ways to achieve the loop you want, including running the loop for an amount of cycles determined by external factors, like size of a list, or even size of a list as it changes.
// What are constructor functions?
  // Constructor functions are functions that essentially create objects (the ones in hashes) by automating the process. It looks like any regular function, except the arguments can be used to add properties. This is great for when you need a group of objects that share similar traits or characteristics, almost like a Ruby class.
// How are constructors different from Ruby classes (in your research)?
  // From my research, I discovered that the biggest difference between Ruby classes and JavaScript constructors, is, while a Ruby class can later create a method for all of its instances, a JavaScript constructor can't. The constructor basically creates the instance once and it's no longer related to the function whence it came. Meanwhile, any instance from a Ruby class will be related to it, and any new methods added to the classes will be readily available to those instance objects.