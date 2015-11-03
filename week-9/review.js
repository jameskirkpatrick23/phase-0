// # I worked on this challenge [Deanna Warren, James Kirkpatrick ].
// # I spent [#] hours on this challenge.

// # Pseudocode

  // # Input: 16 digits integer
  // # Output: boolean
  // # Steps:

  // # CLASS
  // # initialize class with argument 16 integer
  // #   check that for length, if not 16, raise error
  // # run validate


  // # generate list
  // #     of single digits from CC number

  // # double each even-index
  // #     number (and 0)
  // #     0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
  // #     make all numbers single digit (ie 12 becomes 1 , 2)

  // # sum of all

  // # IF sum modulus 10 = 0
  // #       valid number


  // # Initial Solution

  // # Don't forget to check on initialization for a card length
  // # of exactly 16 digits

// class CreditCard

  //   def initialize(number)
  //     @number = number
  //     if number.to_s.length != 16
  //      raise ArgumentError, "That is not a valid length"
  //    end
  //   end

  //   def make_array
  //     #makes an array of each digit in our integer
  //     @list = @number.to_s.split(//)
  //     #iterate through our array
  //     @list.each do |int|
  //       #inside our list, we want to access the index           of int so we can change it, we do NOT want to         just call @list[int].
  //       @list[@list.index(int)] = int.to_i
  //     end
  //   end

  //   def double_evens
  //     #iterate through the list
  //     counter = 0
  //     @list.each do |digit|
  //       #if you reach a digit that has an index of an           even number or 0
  //       if counter % 2 == 0 || counter == 0
  //         @list[counter] *= 2
  //       end
  //       counter +=1
  //     end
  //   end

  //   def isolate_double_digits
  //     counter = 0
  //     16.times do
  //       if @list[counter] > 9
  //         @list[counter] = @list[counter] % 10 +1
  //       end
  //       counter += 1
  //     end
  //   end

  //   def sum_all
  //     counter = 0
  //     @sum = 0
  //     16.times do
  //       @sum += @list[counter]
  //       counter +=1
  //     end
  //      @sum
  //   end

  //   def check_card
  //     self.make_array
  //     self.double_evens
  //     self.isolate_double_digits
  //     p self.sum_all % 10 == 0
  //   end

// end

// THIS WAS FROM CHALLENGE 6.7- VALIDATING CREDIT CARDS
// PREVIOUS CODE MAY BE FOUND ABOVE
var creditCard = {
  initialize: function(number){
    creditCard.number = number;
    if (creditCard.number.toString().length != 16){
      console.log("That is not a valid length");
    }
  }
}

creditCard.make_array = function(){
    // make the list = to the new made array of the number (each digit)
    creditCard.list = creditCard.number.toString().split("")
    // look to iterate through each digit and make them a number again rather than string
    for (var i = 0; i < creditCard.list.length; i++){
      creditCard.list[i] = +creditCard.list[i];
    }
}

creditCard.doubleEvens = function(){
//     #iterate through the list
    for (var i = 0; i < creditCard.list.length; i++){
//    if you reach a digit that has an index of an even number or 0
      if (i % 2 == 0 || i == 0){
        creditCard.list[i] *= 2
      }
    }
}

creditCard.isolateDoubleDigits = function(){
    for (var i = 0; i < 16; i++){
      if (creditCard.list[i] > 9){
        creditCard.list[i] = creditCard.list[i] % 10 +1
      }
    }
}
creditCard.sumAll = function(){
    creditCard.sum = 0
    for (var i = 0; i < 16; i++){
      creditCard.sum += creditCard.list[i]
    }
}
creditCard.check_card = function(number){
       creditCard.initialize(number);
       creditCard.make_array();
       creditCard.doubleEvens();
       creditCard.isolateDoubleDigits();
       creditCard.sumAll();
       console.log(creditCard.sum % 10 == 0)
}

creditCard.check_card(4408041234567901);

// REFLECTION
// What concepts did you solidify in working on this challenge?
// Mostly that a JavaScript Object can contain variables, and functions. Which is pretty cool.

// What was the most difficult part of this challenge?
// The most difficult part was probably remembering the syntax differences

// Did you solve the problem in a new way this time?
// I was able to cut out all the counters by using for loops, so that was kinda cool

// Was your pseudocode different from the Ruby version? What was the same and what was different?
// the psuedocode was mostly the same, however I did change the way a few of the functions worked to change things up