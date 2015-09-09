#How does tracking and adding changes make developers' lives easier? 
That's pretty simple to answer. By being able to track who does what, when they di it, and what those changes might be a developer can choose to move forward or revert back to an older version of the code they work on in order to achieve the best result with minimal headaches

#What is a commit? 
A commit is basically telling git that "Yes I want this in my new version of the code on this branch", go ahead and save it for realsies this time.

#What are the best practices for commit messages? 
They should be in the present imperative sense, and they should accurately represent all changes that were made in that iteration of the design.

#What does the HEAD^ argument mean? 
That means the particular version of the code. If you choose to go backwards in the heads, it is like stepping through previous checkpoints in order to access an earlier version of your code.

#What are the 3 stages of a git change and how do you move a file from one stage to the other?
first you checkout a copy of the main branch to work on, this is done by using git's checkout method. next, you make any kind of changes to it, where you need to add the file to the next commit. finally you must choose to commit the change by using the git commit command.

#Write a handy cheatsheet of the commands you need to commit your changes? 
git checkout master(go to main branch), 
git pull (get all new information/iterations),
git checkout -b branch_name (makes a new identical branch to the master so that you can work on it),
git add file_name (adds that file to the ready-to-commit),
git commit -m or -v (this commits the changes and allows you to make comments on what you want it to say/have), git push origin branch_name (this pushes all changes into github), 
git checkout master, git fetch origin master, 
git merge origin master (this takes all your chnages from the branch and merges them into the main branch).

#What is a pull request and how do you create and merge one? 
pull requests say "Hey! I want to add this to the main code, would you take a look at it and make sure things look good before you merge them for me?" this is accomplished through github by pressing "pull requests" then you authorize it or give feedback etc.

#Why are pull requests preferred when working with teams?
this allows another level of quality control before anything is added to the main code, as well as gives a chance for continued feedback for team-members