// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var myName = "James Kirkpatrick"

prompt("What is your favorite food?")
console.log("Hey! That's my favorite too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

for (var triangle = ''; triangle.length < 8; triangle += '#') {
  console.log(triangle)
};

// Functions

// Complete the `minimum` exercise.
function min (arg1, arg2){
  if (arg1 < arg2)
    return arg1
  else
    return arg2
}
min(0, 2)

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
  name : "James",
  age : 25,
  favoriteFoods : ["PBJ", "Pizza", "Wings"],
  quirk : "Star Wars Nerd",
}