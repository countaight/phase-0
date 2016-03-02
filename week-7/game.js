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
// Create a character with the following properties
	// $5.00 in the wallet
	// And empty inventory
	// Set the current location at home
	// The ability to go to different locations
	// Have different abilities depending on the location
	// Buy at the store
		// Allows items to be placed in the inventory while simultaneously lowering the money in wallet
		// While at home, make lemonade reduces the ingredients and creates a pitcher of lemonade
// Create an store with the following properties
	// A list of items sold there
	// Prices for the items


// Initial Code

var day = 0
var kid = {
	wallet: 5.00,
	inventory: [],
	location: "home",
	goToLocation: function(location) {
		if(location) {
			kid.location = location;
			console.log("You are now at", location);
		} else {
			kid.location = "home";
			console.log("You seem to have wandered about until you found your home!");
		}
		

	}
}




// Refactored Code






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
  (kid.wallet === 5.00),
  "The value of the wallet should be $5.00",
  "2. "
)

kid.goToLocation("store")

assert(
	(kid.location === "store"),
	"The location should read store.",
	"3. "
)