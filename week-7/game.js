// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:

// Escape Gollum's Cave!!!
// Relive the classic interaction between bilbo baggins and Gollum in this text based adventure!

// Overall mission: Answer 4 riddles correct to make it out of the cave!
// Goals: Answer 4 riddles correctly, and escape the cave
// Characters: Gollum, Smeagol, Bilbo
// Objects: Objects for each character that houses lines to say and riddles to ask
// Functions: Function to play the game and to check ask riddles

// Pseudocode
//Set the scene, and introduce our hero to the situation. Then begin the riddle game
//Have bilbo ask a question of gollum
//have gollum answer
//have gollum/smeagol ask a riddle of bilbo
//prompt user with a set of 4 possible answers
// check if user is correct in their guess
// if correct, repeat with new riddle
// if wrong end game and say he died a horrible death
// repeat for 4 riddles
// if correct on all 4 riddles, display victory scene

// Initial Code
var riddleNumber = 0
var stillAlive = true
//DEFINE OUR CHARACTERS
//GOLLUM
var gollum = {

  lines: ['Is it lost precious?', 'SHUT UP!', 'Wasnt talking to you', 'And if it loses? What then precious?']
};
  gollum.riddleQuestion = ['Voiceless it cries, Wingless flutters, Toothless bites, Mouthless mutters']
  gollum.riddleAnswer = ['Our turn', 'Sun shining on daisies precious', 'Eggs', 'What is it precious, what could it be']

//SMEAGOL
var smeagol = {
    lines : ['Oh! We knows! We knows safe paths for hobbitses! Safe paths in the dark...', 'Well, if it loses, we eats it! If Baggins loses, we eats it whole!']
}
  smeagol.riddleQuestion = ['What is it?', 'It cannot be seen, cannot be felt, Cannot be heard, cannot be smelt. It lies behind stars and under hills, And empty holes it fills. It comes first and follows after, Ends life, kills laughter.', 'Alive without breath, As cold as death; Never thirsty, ever drinking, All in mail never clinking', 'This thing all things devours: Birds, beasts, trees, flowers; Gnaws iron, bites steel; Grinds hard stones to meal; Slays king, ruins town, And beats high mountain down.' ]
  smeagol.riddleAnswer = ['Teeth? TEETH!!! HAHAH Yes my preciousss.', 'Daisies', 'Eggs precious... very good precious, very good... Now its our turn', 'Fishes on a little one-legged table, man at table sitting on a three-legged stool, the cat gets the boneses']
//BILBO
var bilbo = {
    lines : ['Yes... Yes and I wish to get unlost... as soon as possible!', 'I didnt say anything...', 'Why dont we have a game of riddles. If I win, you show me out of here', 'Fair enough... Ill go first.']
}
  bilbo.riddleQuestion = ['Thirty white horses on a red hill, First they champ, Then they stamp, Then they stand still.', 'An eye in a blue face, Saw an eye in a green face. That eye is like to this eye, Said the first eye, But in low place, Not in high place.', 'A box without hinges, key or lid, Yet golden treasure inside is hid.', 'No-legs lay on one-leg, two legs sat near on three legs, four legs got some.', 'What have I got in my pocket?']

var addSpaces = function (){
  console.log('')
  console.log('')
}
var callRiddle = function (riddleNumber){
  switch (riddleNumber){
    case 0:
      console.log('Bilbo: ' + bilbo.riddleQuestion[0])
      console.log('Smeagol: ' + smeagol.riddleAnswer[0])
      console.log('Gollum: ' + gollum.riddleAnswer[0])
      console.log('Gollum: ' + gollum.riddleQuestion[0])
      console.log('Smeagol: ' + smeagol.riddleQuestion[0])


      var answer = prompt("1. Winter 2. Wind 3. Love     4. Babies Enter the number of your guess here:");
       if (answer != 2)
         stillAlive = false
       else
         addSpaces()
         console.log('Bilbo: Now its my turn again! ', 'Gollum: Very clever hobbitses... very clever...' );
      break;
    case 1:
      console.log('Bilbo: ' + bilbo.riddleQuestion[1])
      console.log('Smeagol: ' + smeagol.riddleAnswer[1] + 'Gollum: ' + gollum.riddleAnswer[1])
      console.log('Smeagol: ' + smeagol.riddleQuestion[1])
      var answer = prompt("1. Space      2. Time      3. Dark     4. Evil      Enter the number of your guess here:")
      if (answer != 3)
        stillAlive = false
      else
        console.log('Bilbo: My turn again!');
        addSpaces()
      break;
    case 2:
      console.log('Bilbo: ' + bilbo.riddleQuestion[2])
      console.log('Gollum: ' + gollum.riddleAnswer[2])
      console.log('Smeagol ' + smeagol.riddleAnswer[2])
      console.log('Smeagol ' + smeagol.riddleQuestion[2])
      var answer = prompt("1. Soldiers      2. Spiderwebs      3. Dwarves     4. Fish      Enter the number of your guess here:")
      if (answer != 4)
        stillAlive = false
      else
        addSpaces()
        console.log('Gollum: Nasty hobbitses, must be cheating. Kills them prec-');
      break;
    case 3:
      console.log('Bilbo: ' + bilbo.riddleQuestion[3])
      console.log('Gollum: ' + gollum.riddleAnswer[3])
      console.log('Bilbo: Give up yet?')
      console.log('Smeagol: Give us a minute... Give us a chance preciousss')
      console.log('Smeagol: ' + smeagol.riddleAnswer[3])
      console.log('Smeagol: ' + smeagol.riddleQuestion[3])
      var answer = prompt("1. Time      2. Death      3. Water     4. Stone      Enter the number of your guess here:")
      if (answer != 1)
        stillAlive = false
      else
        addSpaces()
        console.log('Gollum: Lets just kill the hobbitses precious, I dont want to-');
      break;
    case 4:
      console.log('Bilbo: ' + bilbo.riddleQuestion[4])
      console.log('Gollum: Thats not fair... Its not a riddle precious...')
      console.log('Smeagol: Fine... but we gets three guesses...')
      console.log('Bilbo: Fair enough')
      console.log('Gollum: Fishes')
      console.log('Bilbo: Nope')
      console.log('Smeagol: Handses!')
      console.log('Bilbo: Wrong again!')
      console.log('Gollum: Buttons')
      console.log('Bilbo: Incorrect, now you must show me the way out')
      console.log('Gollum: Nasty Hobbitses... what does it have in its pocketses...')
      addSpaces()
      console.log('As gollum thinks, he begins to get more and more upset. Knowing the situation could get dangerous at any moment, Bilbo takes his chance and sneaks away to safety.')
      console.log('Congratulations, you have made it through Gollums cave!')
      break;
  }
}
  // SET THE SCENE
  console.log('Blood pumping, tiny hobbit feet a blur of motion, Bilbo baggins blazed around the bend in the goblin-cave.')
  console.log('There must be a place to hide... Gazing about himself, Bilbo saw nothing inside the vast expanse of tunnels than rock. A red glow began to inch forward on the tunnel wall beside him. They were coming. The goblins had blood on their minds, and they were coming for Bilbo. Of all the times to have poor luck... Frantically scanning his surroundings, Bilbo found what he was looking for. A crack in the wall. There! Bilbo exclaimed as he threw himself inside the fissure.')
  addSpaces()
  console.log('War cries and footsteps rang through the air, yet did not stop as they passed by Bilbos hiding place. Sagging against the wall, Bilbo took a deep breath. He had escaped danger for now. With a sigh, Bilbo stood up, taking stock of his surroundings. On the ground to his left, he noticed a shimmering light. An unnatural glow that seemed to call to him. Begged him to investigate. And so, Bilbo had found the ring.')
  addSpaces()
  console.log('It was at that moment, that Bilbo heard a rock crash against the ground to his right. Hastily tucking the ring into his pocket, Bilbo whirled around, unsheathing his sword Sting in the process')
  addSpaces()
  console.log('A raspy, almost hissing voice rang out in the darkness.' + gollum.lines[0])
  console.log('Bilbo whirled about, seeking the source of the voice. Bilbo responded' + bilbo.lines[0])
  console.log('Smeagol: ' + smeagol.lines[0])
  console.log('Gollum: ' +  gollum.lines[1])
  console.log('Bilbo: ' + bilbo.lines[1])
  console.log('Gollum ' + gollum.lines[2])
  console.log('A hunched creature slinked form the darkness. Large black eyes suited to the darkness keenly watched Bilbo as he re-positioned his sword to face the creature. How can I get out of this mess Bilbo thought to himself...')
  addSpaces()
  console.log('Bilbo: ' + bilbo.lines[2])
  console.log('Gollum: ' + gollum.lines[3])
  console.log('Smeagol: ' + smeagol.lines[1])
  addSpaces()
  console.log('Bilbo: ' + bilbo.lines[3])
while (stillAlive && riddleNumber < 5){
    callRiddle(riddleNumber)
    riddleNumber += 1
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