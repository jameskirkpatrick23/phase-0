// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: James Kirkpatrick

// Pseudocode
// Take in a number as an argument
// looking to modify that number, we need to turn it into a string
// We convert the string numbers into indvidual objects in array
// commas equal to array length/3 then floor
// due to the nature of commas in large numbers, it is easier to work from the smallest units of the number forward to the lastergest decimal places
// ex 1,000 might be easier to work with as 0001
// in order to access the correct indexes we can use .charAt() method
// that returns the value at the index
// every 1,000,000,000
//      [0,123,456,789]
//
// counter starts at 0. every time it reaches 2, we add the comma. and reset it.
// so starting at index 2. every time you add 3 to the index you add in the comma
// do until nill or until > (int_string.length + (possible -) number of commas) then at very end we reverse back
// Initial Solution

// var add_commas = function(number){
// //   try to figure out nuber of commas needed in our number
// //   var num_commas = Math.floor(number.toString().length / 3)
// //   console.log(num_commas)
//   var array = number.toString().split("")
// //   console.log(array)
//   var counter = 0
//   for (var i = array.length -1; i> 0; i--){
// //     i starts at 8
// //     counter 1
// //     i at 7
// //     counter 2

//     counter += 1
//     if (counter === 3){
//       counter = 0
//       //replacing rather than inserting. NOW WE HAVE THE INSERT
//       array.splice(i, 1, "," + array[i])
//     }
//   }
//   console.log(array.join(""))
// }

// add_commas(100000000000000000)

// Refactored Solution
//     what is I at any given time during the code. and when should we add our splice statement based on I
//     7 [i]
//    1,000,000n
//    0,123,4567
//     4/3 = 1 2/3
// 1 1/3
// 2/3

var add_commas = function(number){
  var array = number.toString().split("").reverse()
  for (var i = 0; i <  array.length -1; i++){
    if (i % 3 === 2)
      array.splice(i, 1, "," + array[i])
  }
  var stringg = array.reverse().join("")
  return stringg
}

add_commas(19321481934879)


// Your Own Tests (OPTIONAL)




// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
//It was kind of similar. It was obviously much easier this time as we had already done the problem once. Ultimately though, it was a very similar approach on our part (convert to string, convert to array, movify array, convert back to string)

// What did you learn about iterating over arrays in JavaScript?
//Sweet jesus never forget to increment your for loops. Holy heck. I messed that up and crashed my browser twice.

// What was different about solving this problem in JavaScript?
//There were a couple different syntax differences that tripped us up, but overall there werent really that many differences

// What built-in methods did you find to incorporate in your refactored solution?
//.reverse, .join, .splice, .split

// P.S. totally forgot I could just ignore making a variable for the last return. Could have shaved off another line of code. Oh well.

