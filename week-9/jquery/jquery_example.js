// U3.W9:JQuery


// I worked on this challenge [with: Li-Lian Ku ].
// This challenge took me [1] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

	$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM

	bodyElement = $('body')

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements

	$('body > h1').css({'color': 'red', 'border': 'solid', 'visibility':'collapse'});
	$('body > div > h1').html("Rock Doves");

//RELEASE 4: Event Listener
  // Add the code for the event listener here

  
  // $('img').on('mouseover', function(e){
  //   e.preventDefault()
  //   $(this).attr('src', 'http://us.123rf.com/450wm/insima/insima1305/insima130500011/19582501-blue-rock-pigeon-side-view-illustration-isolated-on-white-background.jpg?ver=6')
  // })
  //   $('img').on('mouseleave', function(e){
  //   e.preventDefault()
  //   $(this).attr('src', 'imgs/dbc_logo.png')
  // })

//RELEASE 5: Experiment on your own

	$('img').on('mouseover', function(e){
		e.preventDefault();
		$(this).css({'position':'relative'});
		$(this).animate({left: '10'}, 'slow');
		$('body > h1').css({'visibility':'initial'})
	})
	$('img').on('mouseleave', function(e){
		e.preventDefault();
		$(this).css({'position':'relative'});
		$(this).animate({left: '0'}, 'slow');
		$('body > h1').css({'visibility':'hidden'})
	})




})  // end of the document.ready function: do not remove or write DOM manipulation below this.

// Reflection

// What is jQuery?
// jQuery is a JavaScript library provided as a script that allows DOM manipulation using simpler syntax.

// What does jQuery do for you?
// jQuery allows elemeents on a webpage to be saved as objects in order to call methods that perform basic or popular DOM manipulations such as editing or animation. This also allows for the creation of functions in a simplified and clear manner.

// What did you learn about the DOM while working on this challenge?
// I learned that the DOM is easily manipulated, and that it's not a static application. This allows for interesting manipulations like animations or improve UX.
