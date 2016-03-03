 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Build a lemonade enterprise
// Goals: Buy ingredients and tools to make lemonade more efficiently and sell it
// Characters: A neighborhood kid selling lemonade with hopes of building an empire
// Objects: wallet, inventory, store
// Functions: makeLemonade, goToLocation, buyThings, endDay

// Pseudocode
// Start a counter at day 0
// Set the market price for the day
// Create a store with the following properties
	// A list of items sold there
	// Prices for the items
// Create a character with the following properties
	// $5.00 in the wallet
	// An empty inventory
	// Set the current location at home
	// The ability to go to different locations
	// Have different abilities depending on the location
	// Buy at the store
		// Allows items to be placed in the inventory while simultaneously lowering the money in wallet
	// While at home
		// Make lemonade reduces the ingredients and creates a pitcher of lemonade while the ingredients are available
		// Ending the day sells the lemonade at 5 cups a pitcher times the market price
		// Reset the number of pitchers
		// Increase the day by one
		// Get a new market price


// Initial Code

// var day = 0;
// var marketPrice = Math.floor((Math.random() * 2) + 1);
// console.log("---Welcome to Lemonade Tycoon---", "\nDay", day + 1 )
// console.log("The market price for lemonade today is $"+marketPrice+".00.");
// var store = {
// 	inventory: {
// 		lemons: 0.3,
// 		sugar: 3
// 	}
// };
// var kid = {
// 	wallet: 5,
// 	inventory: {
// 		lemons: 0,
// 		sugar: 0,
// 		juicer: false //this is for future implementations, a juicer would double your output of lemonade
// 	},
// 	location: "home",
// 	pitchers: 0,
// 	goToLocation: function(location) {
// 		if(location) {
// 			kid.location = location;
// 			console.log("You are now at", location);
// 		} else {
// 			kid.location = "home";
// 			console.log("You seem to have wandered about until you found your home!");
// 		}
// 	},
// 	buy: function(item, amount) {
// 		if(kid.location === "store") {
// 			switch(item) {
// 				case "lemons":
// 					if(kid.wallet >= (3 * (amount * 10)/100)) {
// 						kid.wallet = ((kid.wallet * 10) - (store.inventory[item] * 10) * amount)/ 10;
// 						kid.inventory[item] += amount;
// 					} else {
// 						console.log("You don't have enough for lemons.");
// 					}
// 					break;
// 				case "sugar":
// 					if(kid.wallet >= (3 * amount)) {
// 						kid.wallet = ((kid.wallet * 10) - (store.inventory[item] * 10) * amount)/ 10;
// 						kid.inventory[item] += amount;
// 					} else {
// 						console.log("You don't have enough for sugar.");
// 					}
// 					break;
// 				default:
// 					console.log("I'm sorry, we don't have that item.");
// 					break;
// 			}
// 		} else {
// 			console.log("It appears you're not at the store...");
// 		}
// 	},
// 	makeLemonade: function() {
// 		if(kid.location === "home") {
// 			while(kid.inventory.lemons >= 2 && kid.inventory.sugar >= 1) {
// 				kid.pitchers += 1;
// 				kid.inventory.lemons -= 2;
// 				kid.inventory.sugar -= 1;
// 			}
// 		} else {
// 			console.log("It appears you're not at home...");
// 		}
// 	},
// 	endDay: function() {
// 		if(kid.location === "home") {
// 			kid.wallet += kid.pitchers * 5 * marketPrice;
// 			kid.pitchers = 0
// 			console.log("You now have $"+kid.wallet);
// 			console.log("--------------------------");
// 			day += 1;
// 			marketPrice = Math.floor((Math.random() * 2) + 1);
// 			console.log("Day", day + 1, "\nThe market price for lemonade is $"+marketPrice+".00.")
			
// 		} else {
// 			console.log("You need to go home kid...");
// 		}
// 	}
	
// }




// Refactored Code

var day = 0;
var marketPrice = Math.floor((Math.random() * 2) + 1);
console.log("---Welcome to Lemonade Tycoon---", "\nDay", day + 1 )
console.log("The market price for lemonade today is $"+marketPrice+".00.");
var store = {
	inventory: {
		lemons: 0.3,
		sugar: 3,
		juicer: 100
	},
	show: function() {
		var stock = keys(store.inventory);
		for(var i = 0; i < stock.length; i++) {
			console.log(stock[i], "--", store.inventory[stock[i]].toFixed(2));
		}
	}
};

var kid = {
	wallet: 5,
	inventory: {
		lemons: 0,
		sugar: 0,
		juicer: false //this is for future implementations, a juicer would double your output of lemonade
	},
	location: "home",
	pitchers: 0,
	goToLocation: function(location) {
		if(location) {
			kid.location = location;
			console.log("You are now at", location);
		} else {
			kid.location = "home";
			console.log("You seem to have wandered about until you found your home!");
		}
	},
	buy: function(item, amount) {
		if(kid.location === "store") {
			switch(item) {
				case "lemons":
					if(kid.wallet >= (3 * (amount * 10)/100)) {
						kid.wallet = ((kid.wallet * 10) - (store.inventory[item] * 10) * amount)/ 10;
						kid.inventory[item] += amount;
					} else {
						console.log("You don't have enough for lemons.");
					}
					break;
				case "sugar":
					if(kid.wallet >= (3 * amount)) {
						kid.wallet = ((kid.wallet * 10) - (store.inventory[item] * 10) * amount)/ 10;
						kid.inventory[item] += amount;
					} else {
						console.log("You don't have enough for sugar.");
					}
					break;
				case "juicer":
					if(kid.wallet >= 100) {
						kid.wallet -= 100;
						kid.inventory[item] = true;
						delete store.inventory.juicer;
					} else {
						console.log("You don't have enough for a juicer.");
					}
					break;
				default:
					console.log("I'm sorry, we don't have that item.");
					break;
			}
		} else {
			console.log("It appears you're not at the store...");
		}
	},
	makeLemonade: function() {
		if(kid.location === "home") {
			while(kid.inventory.lemons >= 2 && kid.inventory.sugar >= 1) {
				if(kid.inventory.juicer === false) { 
					kid.pitchers += 1;
				} else {
					kid.pitchers += 2;
				};
				kid.inventory.lemons -= 2;
				kid.inventory.sugar -= 1;
			}
		} else {
			console.log("It appears you're not at home...");
		}
	},
	endDay: function() {
		if(kid.location === "home") {
			kid.wallet += kid.pitchers * 5 * marketPrice;
			kid.pitchers = 0
			console.log("You now have $"+kid.wallet.toFixed(2));
			console.log("--------------------------");
			day += 1;
			marketPrice = Math.floor((Math.random() * 2) + 1);
			console.log("Day", day + 1, "\nThe market price for lemonade is $"+marketPrice+".00.")
			
		} else {
			console.log("You need to go home kid...");
		}
	}
}




// Reflection
//
//
//
//
//
//
//
//

// Test Code
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (kid instanceof Object),
  "The value of kid should be an Object.",
  "1. "
)

assert(
  (kid.wallet === 5),
  "The value of the wallet should be $5.00",
  "2. "
)

kid.goToLocation("store")
assert(
	(kid.location === "store"),
	"The location should read store.",
	"3. "
)

kid.buy("lemons", 4);
kid.buy("sugar", 1);
assert(
	(kid.wallet === .8),
	"The wallet should now have decreased in money.",
	"4. "
)

kid.goToLocation();
assert(
	(kid.location === "home"),
	"Not calling a location sends you back home.",
	"5. "
)

kid.makeLemonade();
assert(
	(kid.pitchers === 1),
	"Make lemonade yields one pitcher.",
	"6. "
)

oldMarketPrice = marketPrice
kid.endDay();
assert(
	(kid.wallet === .8 + oldMarketPrice * 5),
	"The wallet should now have decreased in money.",
	"7. "
)

kid.inventory.juicer = true;
kid.inventory.lemons = 6; //six lemons to produce 3 pitchers
kid.inventory.sugar = 3; //three bags of sugar to produce 3 pitchers
kid.makeLemonade()
assert(
	(kid.pitchers === 6),
	"The juicer should double the output of pitchers.",
	"8. "
)