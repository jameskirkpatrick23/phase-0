// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 0:
document.getElementById("release-0").className = "done";


// Release 1:
document.getElementById("release-1").style.display = "none";


// Release 2:
// Change the inner text of the <h1> tag to "I completed release 2."
var heading = document.getElementsByTagName('h1')[0].innerHTML = "I completed release 2";
// heading.textContent = 'I completed release '
// var changeText = heading.textContent;
// changeText = changeText.replace('Change this text to finish release 2', 'I completed release 2');
// heading.innerHTML = changeText;


// Release 3:
document.getElementById("release-3").style.background = "#955251";



// Release 4:
// only gave one instance of the class. so we need to iterate
// document.getElementsByClassName("release-4").style.fontSize = "2em";

var classElements = document.getElementsByClassName("release-4")
for (i = 0; i< classElements.length; i++){
  classElements[i].style.fontSize = "2em";
}


// Release 5:

var tmpl = document.getElementById("hidden");
document.body.appendChild(tmpl.content.cloneNode(true));

// // REFLECTION
// What did you learn about the DOM?
// The DOM is basically the control flow of the entire website. You can almost think of it like a waterfall, or tree, each element cascading into its child and sibling elements to create the website

// What are some useful methods to use to manipulate the DOM?
// Obviously the ability to access particular elements by their class, tag, or ID is huge. and then being able to create templates that are only activated if you want, thats pretty cool right there.