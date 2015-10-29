var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// TRY TO MAKE EACH OF THESE INTO INDIVIDUAL METHODS, then call them

// current problem is that president and every other part is in one big string.
var president = []
var vicePresident = []
var secretary = []
var treasurer = []
// get things into an array so we can count them
for (var key in votes) {
   if (votes.hasOwnProperty(key)) {
       var obj = votes[key]
       president.push(obj.president)
       vicePresident.push(obj.vicePresident)
       secretary.push(obj.secretary)
       treasurer.push(obj.treasurer)
    }
}

president.sort();
vicePresident.sort();
secretary.sort();
treasurer.sort();


// var counts = {};
var counter = function (array, hash){
  for(var i = 0; i < array.length; i++) {
      var candidate = array[i];
//         if the next candidate is the same as current candidate, add one to the value, otherwise do nothing
      hash[candidate] = hash[candidate] ? hash[candidate]+1 : 1;
  }
}


var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}
counter(president, voteCount.president);
counter(secretary, voteCount.secretary);
counter(vicePresident, voteCount.vicePresident);
counter(treasurer, voteCount.treasurer);


var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// console.log(voteCount.president)


var maximum = function(hash){
//   define an empty array
    var array = [];
//   for each value in our given hash(looking for the candidates)
    for(var value in hash){
//       push the candidate name onto the array
       array.push(hash[value]);
    }
// declare a maximum variable that is equal to the highest number of votes in our hash (in president case it is set to 13)
    var max = Math.max.apply(null, array);
// check each value to see if it is equal to that 13 number, and if it is then you return that name
     for(var value in hash){
        if(hash[value] == max){
            return value;
        }
    }
}
officers.president = maximum(voteCount.president);
officers.vicePresident = maximum(voteCount.vicePresident);
officers.secretary = maximum(voteCount.secretary);
officers.treasurer = maximum(voteCount.treasurer);
// console.log(officers)



// console.log(voteCount.president.)
  // ACCESSING VALUES: President Votes[x][0(or president:)][mode], VP [x][1], Secretary[x][2], Treasurer[x][3]

  // We have a nested data structure, we are given a series of keys which represent voters. Those voters then have a series of four votes, one for each position held in a key-value structure.
  // Goal is to access each INNER key value pair, record each person (v) getting vote in each office (k), then later decide who has the most votes.
  /* The name of each student receiving a vote for an office should become a property
  of the respective office in voteCount.  After Alex's votes have been tallied,
  voteCount would be ...
    var voteCount = {
      president: { Bob: 1 },
      vicePresident: { Devin: 1 },
      secretary: { Gail: 1 },
      treasurer: { Kerry: 1 }
    }
  */


  /* Once the votes have been tallied, assign each officer position the name of the
  student who received the most votes. */



function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)