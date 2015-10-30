/*
Gradebook from Names and Scores

I worked on this challenge [by myself, with:]
This challenge took me [#] hours.

You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]


// Make each student name in students a property of gradebook and assign each the value of a new object.
// gradebook {
//   joe: 80, 70

// }

// Give each student property of gradebook its own testScores property and assign it the value of the respective students scores from scores.
// __________________________________________
// Write your code below.


// var gradebook = {};
// // gradebook.something = something;

// for(var student in students){
//  gradebook[students[student]] = {};

// }
// // console.log(gradebook)
// for(var student in students){
// //   starts at joe
// //     should be starting at [80, 70, 70, 100]
//     gradebook[students[student]]["testScores"] = scores[student];
// //      gradebook[students[student["testScores"]]] = scores[score]
// }
// // console.log(gradebook)

// var average = function(array){
//   var sum = 0
//   for (var i in array){
//     sum +=array[i];
//   }
//   return sum/array.length;
// }

// gradebook.addScore = function(name, score){
//   this[name]["testScores"].push(score)
// }
// gradebook.getAverage = function(name){
//    return average(this[name]["testScores"]);
// }



// __________________________________________
// Refactored Solution


var gradebook = {};

for(var student in students){
 gradebook[students[student]] = {};

}
for(var student in students){
    gradebook[students[student]]["testScores"] = scores[student];
}

function average(array){
    var sum = array.reduce(function (a,b){
      return a + b;
    });
    return sum/array.length;
}

gradebook.addScore = function(name, score){
  this[name]["testScores"].push(score)
}
gradebook.getAverage = function(name){
   return average(this[name]["testScores"]);
}






// __________________________________________
// Reflect
// What did you learn about adding functions to objects?
// adding functions is way easier than iterating through objects in my mind. all you need to do is call the parent object and a . to make the function. easy peasy.

// How did you iterate over nested arrays in JavaScript?
// mostly by just the for var in key, then getting the correct indexes for the information we wanted

// Were there any new methods you were able to incorporate? If so, what were they and how did they work?
// .reduce, geez that thing is cool. I still am not sure baout how it works, but andrew made it sound awesome. plus it works which is nice.








// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)