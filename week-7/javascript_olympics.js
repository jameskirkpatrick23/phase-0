 // JavaScript Olympics

// I paired [by myself, with: Josh Kim] on this challenge.

// This challenge took me [#] hours.

// each Athlete has a few properties:
// name:
// event:
// (WE WANT TO ADD win:)
// Warm Up

var sarahHughes = {
    name: "Sarah Hughes",
    event: "1998 Classic"}
var bettyStone= {
    name: "Betty Hughes",
    event: "swimming"}
var jakeGrass= {
    name: "Jake Grass",
    event: "polevault"}

var athleteArray = [sarahHughes, bettyStone, jakeGrass]

// console.log(atheleteArray)

// Bulk Up
// Release 1: Bulk up: Add properties to Objects
// Create a function that takes an array of athletes that include a name and event property. (Sarah Hughes (Links to an external site.), for example, could have "Ladies' Singles" as her event). Your function should add a  win property to each athlete in the array. In the example above,  win would print "Sarah Hughes won the Ladies' Singles!"

// Would it make more sense to have win be defined as a function expression or a function declaration?

var winAdd = function(array){
  for (var i = 0; i < array.length; i++){
    array[i].win = array[i].name + " has won the " + array[i].event
  }
}
// winAdd(athleteArray)
// console.log(athleteArray)



// Jumble your words

// Release 2: !sdrow ruoy elbmuJ: Reverse a string
// Create a function that accepts a string as an argument and reverses it. Use the built-in JavaScript methods for strings and arrays to accomplish this. See the MDN String (Links to an external site.) and Array (Links to an external site.) docs. HINT: Think about how you would write this in Ruby and translate!
var jumbleWords = function(stringToJumble){
  return stringToJumble.split("").reverse().join("")
}
// console.log(jumbleWords("how now brown cow!!!"))


// 2,4,6,8

// Release 3:
//2, 4, 6 ,8! Who do we appreciate?
// Create a function that accepts an array of numbers. Return an array with only the even numbers. You can do this manually or use built-in JavaScript Array Methods (Links to an external site.). Are you missing Ruby yet?

var numbers = [4,5,6,7,4,2,5,6,7,5,3,1]

// var evens = function(numArray){
//   for (var i = 0; i < numArray.length; i++){
//     if (numArray[i] % 2 != 0)
//       delete numArray[i];
//   }
//   return numArray
// }

// console.log(evens(numbers))

// REFACTORED
var checkEven = function(number){
  return number % 2 === 0
}
var evenThingsOut = function(numberArray){
  return numberArray.filter(checkEven)
}
// console.log(evenThingsOut(numbers))



// "We built this city"
// Driver test code has been provided for you below. Copy and paste it to your javascript_olympics.js file. Read the definition of a constructor function from this excellent (albeit old) article (Links to an external site.). This is a great article to return to when you have the time to learn more about constructor functions.
function Athlete(name, age, sport, quote){
  this.name = name
  this.age = age
  this.sport = sport
  this.quote = quote
}
var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// // Reflection
// What JavaScript knowledge did you solidify in this challenge?
// generic function creation and method calling

// What are constructor functions?
// functions that are created or utilized when a new instance of a class is created, that are then inhereted by any instances of that class

// How are constructors different from Ruby classes (in your research)?
// they aren't really that different other than syntax. at least from what I could tell