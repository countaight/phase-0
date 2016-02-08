# 4.2 Numbers, Letters, Variable Assignments

## Release 1

* What does puts do?
* What is an integer? What is a float?
* What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

The method puts (short for put string) prints a string of the output given to the console along with a new line.

An integer is a whole number without any decimals. A float, on the other hand, is a number with decimals.

Float division allows you to divide two float numbers--numbers with decimals--the output of which will include any decimal numbers (i.e. 5/2 => 2.5). Integer division divides whole numbers without the decimals, the output of which is also a whole number rounded down (i.e. 9/2 => 4). 


## Release 2

```ruby
hours_in_a_day = 365 * 24
puts hours_in_a_day
```

```ruby
minutes_in_a_decade = 365 * 24 * 60 * 10
puts minutes_in_a_decade
```


## Release 5

[4.2.1 Defining Variables](defining-variables.rb)

[4.2.2 Simple String Methods](simple-string.rb)

[4.2.3 Local Variables and Basic Arithmetic Operations](basic-math.rb)

## Release 7

* How does Ruby handle addition, subtraction, multiplication, and division of numbers?
* What is the difference between integers and floats?
* What is the difference between integer and float division?
* What are strings? Why and when would you use them?
* What are local variables? Why and when would you use them?
* How was this challenge? Did you get a good review of some of the basics?

Ruby uses arithmetic operators to handle calculations, + - * / %, are all methods that once called between two integers or floats, output the mathematical answer.

Integers are whole numbers with no decimals, so for example, 1, 3, 34, or 148. Floats are numbers with decimals, so for example, 1.5, 67.589, or 13545.0001.

Integers and floats can only be divided within their own class, so integers divided by integers or floats divided by floats. Having said that, diving one integer by another outputs the answer as a whole number rounded down. Dividing floats by other floats outputs a number with decimals.

Strings are a set of letters, punctuation, and/or numbers meant to be represented as text. They are used to display messages or data in the form of text.

Local variables are words meant to contain data inside a program. They are used when a persistent state or value needs to be reused or revisited by the program. For example a variable named age can contain a number such as 25, and when recalled, age will always display 25.

This challenge was a great refresher for the basics. I especially enjoyed using RSpec, as I'm not too familiar with it. It's great to be able to start small.