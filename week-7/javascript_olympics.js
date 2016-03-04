 // JavaScript Olympics

// I paired [with: Tomasz ] on this challenge.

// This challenge took me [#] hours.


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

// function commas(number) {
//   var numberString = String(number);
//   var digitArray = numberString.split("").reverse();
//   if (numberString.length <= 3) {
//     return numberString;
//   } else {
//     for (var i = 3; i < digitArray.length; i+=4) {
//       digitArray.splice(i, 0, ",");
//     };
//   }
//   return digitArray.reverse().join("");
// }
