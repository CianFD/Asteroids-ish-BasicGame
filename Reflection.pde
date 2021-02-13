/* Reflection

Name : Cian Dunne


Part A - Mark (5 /5)
-----------------------------

Read Me Sections Completed:
Description of Game.
Listed Known Bugs and Detailed Them to Best of My Ability.
Sourced all used Websites and Materials.

Reflection Completed:
Highlighting Each Sections of the Rubric and how my work reflects these requirements.
Also highlights what grade I have rewarded myself for each of these sections.

Video Link is above.

To Summarise: Readme, Reflection and Video Link All Included.
I therefore award myself 5/5 for this section.


Part B - Mark (5 /5)
-----------------------------

Added Single and Multiple Line Comments consistently throughout the main Project Tab and all Class Tabs - Asteroids, Player, Ship.
Attempted to use correct indentation throughout. Made frequent use of CMD+T Processing Shortcut to Auto-Format correctly.
Used correct naming structures making each name relevant to the section or action it dictated.
Made use of Camel Case naming when necessary.
Attempted to keep Structure correct and consistent throughout.
Attempted to put correct Methods within the correct Sections - Setup, Draw, Classes, Etc.

In Summary I attempted to adhere to the Rubric in relation to Commenting, Indentation, Naming and Structure.
I therefore award myself 5/5 Marks for this section.


Part C - Mark (5 /5)
-----------------------------
Use of if and loop statements:

If Statements:

Main Game Class:
At line 47 an if stastement calls the avoid method from the asteroids class.
If the avoid method is called successfully, the players score is increased by 1.
At lines 51-86, a number of if Statements are called in conjunction with the boolean method, collision.
The collision method in turn incorporates the impact method.
If the collision is true the collide method is called from the asteroids class.
This method resets the asteroid which collided with the ship back to the right edge of the display.
The lifeLost value is incremented by 1 indicating the Player lost a life.
If the lifeLost value is less than the roundOver value, the display method from the asteroids class is called continuing to create the asteroids.
If the lifeLost value is equal to the roundOver value (of which the Player has dictated themselves at the start of the game),
The round ends, the round score is held in the scores array called from the Player class, and the round variable is increased by 1.
If the round value is less than the gameOver value, the reply variable is called - in this the players score for that round is displayed back to them.
The score is displayed in a story in line with the plot of the game.
The player is then offered the option of going to the next round of the game through a JOptionPaneYesNo Dialog Box.
If the player chooses Yes - the game resets and the next round is called.
If the player chooses No - the game is ended and the End Game Display is called.
This Display shows the End Game Story, the Scores of each Round pulled from the Scores Array and determines the Highest and Lowest Scores.
If the round value is equal to the gameOver value the End Game Display is also called.
On Lines 93-97, an if statement is called inside the boolean method impact.
If the calculation to determine asteroidDistanceX is greater than or equal to xCoordA pulled from the Ship Class
And less than or equal to xCoordB also pulled from the Ship Class,
And if the calculation to determine asteroidDistanceY is greater than or equal to the yCoordA pulled from the Ship Class
And less than or equal to the yCoordC also pulled from the Ship,
then the impact method returns true indicating the ship has collided with an asteroid
Else, the impact method returns as false and the asteroid has sailed past the ship without a collision.

Asteroids Class:
At lines 64-70 boolean method avoid is called incorporating an if statement.
If the xCoord of an Asteroid reaches the left edge of the Display,
The resetAsteroids Method is called resetting the Asteroids location to a random point just outside the right edge of the Display.
The players score for that round is increaed by 1
Else this indicates the ship has collided with the asteroid
a life is lost and the Asteroid is again reset to just outside the right edge of the display again to continue the game.

Player Class:
At lines 7-12, an if statement is called inside the Player Srtring Method, dictating the length of the String the Player can enter as their name.
If the String is less than or equal to 10 characters in length the String equals the playerName.
If the String is more than 10 characters the String is cut to 10 characters only,
the first 10 characters are set as the playerName and any remaining characters are deleted.
At lines 33-36, an if statement is called inside the roundScore method.
If the score is greater than 0 the score is taken into the scores Array and stored as the score for that round.
At lines 43-45, in the highestScore method inside a while loop an if statemnent is utilised.
Inside the while loop to determine the highestScore saved in the Scores array if the latest Score added to the Array is larger than the current highest Score,
Than the latest Score becomes the new value of highestScore.
At lines 55-57, in the lowestScore method inside a while loop an if statement is also utilised.
Inside the while loop to determine the lowestScore saved in the Scores array if the latest Score added to the Array is smaller than the current lowest Score,
Than the latest Score becomes the new value of lowestScore.

Ship Class:
At lines 23-27, an if statement is utilised to control the placement of the Ship.
If mouseX is less than 0, xCoordA of the Ship is set at 0, xCoordB is set at 0+width/20 and xCoordC is set at 0.
At lines 29-33, an if statement is utilised to control the placement of the Ship.
If mouseX is greater than width/4, xCoordA is set at width/4, xCoordB is set at width/4+width/20, and xCoordC is set at width/4.
At lines 39-43, an if statement is utilised to control the placement of the Ship.
If mouseY is less than 0, yCoordA is set at 0, yCoordB is set at 0+height/20 and yCoordC is set at 0+height/10.
At lines 45-49, an if statement is utilised to control the placement of the Ship.
If mouseY is greater than the height of the display -height/10, yCoordA is set at height-height/10, yCoordB is set at height-height/20 and yCoordC is set at height.


Loops:

Main Class:
At lines 17-19, a for loop is incorporated to create an array displaying multiple Asteroids.
The for loop runs for the length of the asteroids array creating Asteroids of Diameter 30.
The Asteroids move across the Display and are reset to the right of the display when they reach the left Edge so at a given time there are always 6 Asteroids on the Display.
At lines 45-86, a for loop is incorporated to continue controlling the Asteroids Array.
This controls the majority of the game dictating the Asteroids to move across the display.
if they hit the left edge to reset to the right edge, if they hit the ship a life is lost and they reset to the right edge again.
A number of if statements are utilised inside the for loop to control what will happen if the player runs out of lives, a round ends, or the game ends entirely
(these are broken down above in the if statement section).

Player Class:
At lines 41-46, a while loop is utilised to calculate the highestScore variable.
While the s variable is less than the scoreCount variable,
if the latest score entered into the Scores Array is greater than the current highestScore,
the latest score becomes the new value of highestScore.
This continues until the s variable equals the scoreCount variable and the current highestScore value is then returned as highestScore
At lines 54-58, a while loop is utilised to calculate the lowestScore.
While the l variable is less than the scoreCount variable,
if the latest score entered into the Scores Arrayr is less than the current lowestScore,
the latest score becomes the new value of the lowestScore.
This continues until the l variable equals the scoreCount variable and the current lowestScore value is returned as lowestScore.
At lines 66-68, a for loop is utilised in oonjunction with a String toString Method.
This method takes the Scores saved in each of the levels of the scores Array and Displays them in a vertical column in numerical order from first round to final round.

A variety of If Statements, For Loops and While Loops have been incorporated into the Main Class and Subclasses of the Project.
Based on the examples listed above I award myself 5 out of 5 marks for this section


Part D - Mark (4 /5)
-----------------------------
The game does work, however due to the issues with the collision detection methods following the mouse position rather than the ship directly it causes lives to be lost incorrectly.

Main Class:
At lines 89-98 of the main class, boolean method impact() is created with 2 variables utilising the calculations of the Asteroids and Ship Classes.
float asteroidDistanceX is calculated using the absoute value of (the Asteroids XCoord minus the Ship XCoordA minus the Ship XCoordB).
float asteroidDistanceY is calculated using the absolute value of (the Asteroids YCoord minus the Ship YCoordA minus the Ship YCoordC).
These values are then incorporated into an If Statement determining if the Asteroids Collide with the Ship or not
If the Asteroids do not collide with the Ship the game continues, the Asteroid resets to the right edge of the Display and the score increases by 1
If the Asteroids collide with the Ship the Asteroid is reset to the Right Edge of the Display, the player loses a Life and if the life lost value is less than the round over value the game continues
If the lifelost value is equal to the round over value the round ends.
This method is then called in the draw method inside a method called boolean collision.
This particular method is currently not working how I wish it to.
The asteroidDistanceX and asteroidDistanceY calculations should dictate themselves based on the position of the Ship but instead they follow the position of the mouse.
Therefore if the Ship remains in the quarter of the Display it can stay in but the mouse is further to the right of the display a collision can still be recorded.
I was not able to resolve this issue before submission hence why i did not give myself top marks for this section.
At lines 100-103 of the main class the newRound() method is created. This method simply resets the score and livesLost variables to 0 when a new round is commencing.
This method is called in the draw method inside an if statement. If the number of rounds is less than the value of gameOver, the player can choose to start next round or end the game.
If they choose to start next round the newRound method is called.
At lines 110-117 of the main class the gameOverManGameMan() method is created. This method creates a Display of the Players EndGame Results.
A JOptionPaneDialog Box is called. Inside the Box it pulls the playerName from the Player Class, then explains how the Game's Story Ends.
It then displays the amount of rounds the Player attempted based on the current value of the round variable.
It then displays the toString Method from the Player Class which uses a For Loop to Display in a List from first to last round the scores of each round taken from where they were stored in the scores Array.
Then incorporated into the Story of the Game it pulls the value of the highestScore pulled from the Player Class Method highestScore.
Also incorporated into the Story of the Game it pulls the value of the lowestScore pulled from the Player Class Method lowestScore.
This method is called in void draw().
If the number of rounds is equal to the number of games the Player entered at the start or if the Player chooses not to play the next Round,
gameOverManGameOver() is called ending the Game and displaying the Player's Results as described above.

Asteroids Class:
On line 40-43 - public Asteroids() Method which calls variable diameter, sets the diamteter of the setDiameter Setter as the Diameter of the Asteroids
This also calls the private method resetAsteroids.
This method is called in the void setup() which creates an array of length 6 inside a for loop to create multiple asteroids of diameter 30.
On line 45-47 public collide()  method with no variables is created. This method also calls the resetAsteroids private method inside it.
collide is used in the main class in the void draw() inside the for loop which dictates the Asteroids Array,
dictating that if an Asteroid collides with the Ship the Asteroid would be reset to just outside the right edge of the Display.
On lines 49-53 private resetAsteroids() method is created. This method is utilised inside the Asteroids(), collide() and avoid() methods of the Asteroids Class.
This sets the XCoord, YCoord and XSpeed Values of the Asteroids each time they're reset,
either because they've met the left edge of the Display, or because they've collided with a Ship.
When this happens the xCoord is set to a random value between width+5 and width+10 to ensure they enter the Display in Staggered Locations not in a Row.
yCoord is set to a random value between diameter/2 and height-diameter/2 (to ensure the full Asteroid is visible in the display at all points on the Y-Axis).
xSpeed is set to a random value between 5 and 10, this will ensure the speed differs on each Asteroid adding a slight increase in difficulty for the game.
On lines 55-59 public method displayAsteroids() is created. This is used to create the Asteroids.
The fill is full white (255) to make them visible in the blackness of space.
An ellipse is used incorporating the xCoord, yCoord and diameter values set in the Asteroids Class.
noStroke() is used to remove a line around the edge of each Asteroid.
This method is called in the main class in the void draw() inside the for loop which dictates the Asteroids Array,
it dictates that while the Asteroid is displayed on the screen in conjunction with the other commands in the loop/array it will be displayed in the above manner.
On lines 61-70 public Boolean Method avoid() is created. This method determines if the Ship avoids or collides with an Asteroid.
If the Ship successfully avoids the Asteroid the resetAsteroids() method is called,
the xCoord is set to xCoord - xSpeed to indicate the Asteroid moving towards the left and the score is increased by 1
If the Ship collides with the Asteroid the player loses a life.
This method is called in the main class in the void draw() inside an if statement in the for loop that dictates the Asteroids Array.

Player Class:
On lines 6-14, public Player() Method is created which calls 2 variables - String Variable playerName and int Variable gamesPlayed.
If the playerName the Player enters in the main display in void setup() is less than 10 characters it returns as the playerName Variable.
If the playerName the Player enters is longer than 10 characters it holds the playerName Variable as the first 10 characters and deletes the rest.
scores value is dictated to be an integer array which will hold a value for each of the rounds the player completes in their interaction with the game.
scoreCount is set as 0 setting the initial score for the Player as 0.
This Method is called in the main class in void setup() within a JOptionPane Input Box requesting the Player to enter their name.
On lines 32-37, public roundScore() Method is created which calls the int Variable Score.
If the score variable is equal or greater than 0 the score is inputted into the scores array and held there as the score for each round of the game.
score Count is increased by 1 for each round played.
This method is called in the main class in void draw() inside the for loop which dictates the Asteroids Array.
If the player has lost all lives in a round the round is ended - the score is added to the scores array as the score for that round and variable round is increased by 1.
On lines 39-49, public method highestScore() is created. This method utilises a while loop in conjunction with the scores Array.
At the end of each round the scores Array takes in the score the Player achieved in that round and holds it in the Array.
highestScore() then reads the score and compares it to the current highestScore variable value that has been returned.
If the new score is greater than highestScore then the new score becomes highestScore variable value and the loop returns highestScore value after all rounds hsve been completed.
This method is called in the main sketch during the gameOverManGameOver() to display to the player what their highest score was across the rounds.
On lines 51-61, public method lowestScore() is created. This method utilises a while loop in conjunction with the scores Array.
At the end of each round the scores Array takes in the score the Player achieved in that round and holds it in the Array.
lowestScore() then reads the score and compares it to the current lowestScore variable value.
If the new score is less than lowestScore then the new score becomes lowestScore variable value and the loop returns lowestScore value after all rounds hsve been completed.
This method is called in the main sketch during the gameOverManGameOver() to display to the player what their lowest score was across the rounds.
On lines 64-70, the public String method toString() is created.
Initially, String variable str is set as Scores for the playerName.
str is then put through a for loop the length of how many rounds occurred.
during the for loop the str String variable is edited to include the final score of each round.
These scores are pulled from each level of the scores array, then a line break making a list of each round scores by the time the for loop ends.
str is then returned as Scores for playerName and then a list of the scores for each round.
This method is called in the main sketch in th gameOverManGameOver() method as part of the JOptionPane Dialog Box that displays the Player's End Game Scores.

Ship Class:
On lines 9-16, public method Ship is created. This method takes in each xCoord and yCoord to set up the 3 corners of the triangle being used as the "Ship".
This method is called in the main sketch in void setup().
On lines 18-50, public method placement() is created. This method is used to dictate where on the Display the Ship can go.
The initial values are set as xCoordA = mouseX, xCoordB = mouseX + width/20, xCoordC = mouseX, yCoordA = mouseY, yCoordB = mouseY + height/20, yCoordC = mouseY + height/10
Paremeters are put in place so that the Ship can only move inside a certain portion of the Display and the Ship cannot leave the Display.
If mouseX is less than 0, xCoordA of the Ship is set at 0, xCoordB is set at 0+width/20 and xCoordC is set at 0.
If mouseX is greater than width/4, xCoordA is set at width/4, xCoordB is set at width/4+width/20, and xCoordC is set at width/4.
If mouseY is less than 0, yCoordA is set at 0, yCoordB is set at 0+height/20 and yCoordC is set at 0+height/10.
If mouseY is greater than the height of the display -height/10, yCoordA is set at height-height/10, yCoordB is set at height-height/20 and yCoordC is set at height.
This method is called in the main sketch in void draw().
On lines 52-57, public method showShip() is created. Fill is set at deep red (255,0,0) on the RGB scale.
A triangle is created using the xCoords and yCoords dictated in the Ship Class to crete the Ship itself.
Behind the triangle a rectangle is created using xCoordA and yCoordA with a black fill to sit "invisibly" behind the Ship.
The rectangle is used to dictate the collision detection to work around not using PVectors due to the assignment constraints.
This method is called in the main display in void setup() to display the Ship on the Output Display.

A variety of Bespoke Methods were created in the Main Class and all other Classes. The majority of these Methods work as they are supposed to.
However as mentioned previously, the impact method calculations are incorrect and therefore cause the Player to lose Lives when they shouldn't.
Therefore based on the list of bespoke methods listed above that for the most part work as they are supposed to I award myself 4/5 for this section.


Part E1 - Mark (10 /10)
-----------------------------

I created 3 Classes and incorporated them into the main Sketch - Asteroids, Player and Ship.
I called each of these 3 classes into the main sketch at lines for Asteroids, lines for Player and lines for Ship.

Getters/Setters
Asteroids Class Getters and Setters were created on lines 7-37
Player Class Getters and Setters were created on lines 16-30
Ship Class Getters and Setters were created on lines 62-112.

Constructors
Asteroids Constructor overloaded (also uses this name Asteroids for the Class name) with diameter variable is created on lines 40-43,
and called in main sketch on line 16 in conjunction with an array inside a for loop.
Player Constructor overloaded (also uses this name Player for the Class name) with 2 variables - playerName String Variable and gamesPlayed int variable,
and called in the main sketch on line 37 in conjunction with a JOptionPane Input Box.
Default Ship Constructor is created on lines 9-16 and called in the main sketch on line 21.

As I have created 3 Classes, with Getters/Setters for all Variables and Constructors created to incorporate into the main sketch.
All of the Classes work as expected and have been referenced correctly in this reflection therefore I give myself 10 marks out of 10 for this section.


Part E2 - Mark (15 /15)
-----------------------------
I created a variety of Bespoke Methods across my 3 classes - Asteroids, Player and Ship.

Asteroids Class:
On line 40-43 - public Asteroids() Method which calls variable diameter, sets the diamteter of the setDiameter Setter as the Diameter of the Asteroids
This also calls the private method resetAsteroids.
This method is called in the void setup() which creates an array of length 6 inside a for loop to create multiple asteroids of diameter 30.
On line 45-47 public collide()  method with no variables is created. This method also calls the resetAsteroids private method inside it.
collide is used in the main class in the void draw() inside the for loop which dictates the Asteroids Array,
dictating that if an Asteroid collides with the Ship the Asteroid would be reset to just outside the right edge of the Display.
On lines 49-53 private resetAsteroids() method is created. This method is utilised inside the Asteroids(), collide() and avoid() methods of the Asteroids Class.
This sets the XCoord, YCoord and XSpeed Values of the Asteroids each time they're reset,
either because they've met the left edge of the Display, or because they've collided with a Ship.
When this happens the xCoord is set to a random value between width+5 and width+10 to ensure they enter the Display in Staggered Locations not in a Row.
yCoord is set to a random value between diameter/2 and height-diameter/2 (to ensure the full Asteroid is visible in the display at all points on the Y-Axis).
xSpeed is set to a random value between 5 and 10, this will ensure the speed differs on each Asteroid adding a slight increase in difficulty for the game.
On lines 55-59 public method displayAsteroids() is created. This is used to create the Asteroids.
The fill is full white (255) to make them visible in the blackness of space.
An ellipse is used incorporating the xCoord, yCoord and diameter values set in the Asteroids Class.
noStroke() is used to remove a line around the edge of each Asteroid.
This method is called in the main class in the void draw() inside the for loop which dictates the Asteroids Array,
it dictates that while the Asteroid is displayed on the screen in conjunction with the other commands in the loop/array it will be displayed in the above manner.
On lines 61-70 public Boolean Method avoid() is created. This method determines if the Ship avoids or collides with an Asteroid.
If the Ship successfully avoids the Asteroid the resetAsteroids() method is called,
the xCoord is set to xCoord - xSpeed to indicate the Asteroid moving towards the left and the score is increased by 1
If the Ship collides with the Asteroid the player loses a life.
This method is called in the main class in the void draw() inside an if statement in the for loop that dictates the Asteroids Array.

Player Class:
On lines 6-14, public Player() Method is created which calls 2 variables - String Variable playerName and int Variable gamesPlayed.
If the playerName the Player enters in the main display in void setup() is less than 10 characters it returns as the playerName Variable.
If the playerName the Player enters is longer than 10 characters it holds the playerName Variable as the first 10 characters and deletes the rest.
scores value is dictated to be an integer array which will hold a value for each of the rounds the player completes in their interaction with the game.
scoreCount is set as 0 setting the initial score for the Player as 0.
This Method is called in the main class in void setup() within a JOptionPane Input Box requesting the Player to enter their name.
On lines 32-37, public roundScore() Method is created which calls the int Variable Score.
If the score variable is equal or greater than 0 the score is inputted into the scores array and held there as the score for each round of the game.
score Count is increased by 1 for each round played.
This method is called in the main class in void draw() inside the for loop which dictates the Asteroids Array.
If the player has lost all lives in a round the round is ended - the score is added to the scores array as the score for that round and variable round is increased by 1.
On lines 39-49, public method highestScore() is created. This method utilises a while loop in conjunction with the scores Array.
At the end of each round the scores Array takes in the score the Player achieved in that round and holds it in the Array.
highestScore() then reads the score and compares it to the current highestScore variable value that has been returned.
If the new score is greater than highestScore then the new score becomes highestScore variable value and the loop returns highestScore value after all rounds hsve been completed.
This method is called in the main sketch during the gameOverManGameOver() to display to the player what their highest score was across the rounds.
On lines 51-61, public method lowestScore() is created. This method utilises a while loop in conjunction with the scores Array.
At the end of each round the scores Array takes in the score the Player achieved in that round and holds it in the Array.
lowestScore() then reads the score and compares it to the current lowestScore variable value.
If the new score is less than lowestScore then the new score becomes lowestScore variable value and the loop returns lowestScore value after all rounds hsve been completed.
This method is called in the main sketch during the gameOverManGameOver() to display to the player what their lowest score was across the rounds.
On lines 64-70, the public String method toString() is created.
Initially, String variable str is set as Scores for the playerName.
str is then put through a for loop the length of how many rounds occurred.
during the for loop the str String variable is edited to include the final score of each round.
These scores are pulled from each level of the scores array, then a line break making a list of each round scores by the time the for loop ends.
str is then returned as Scores for playerName and then a list of the scores for each round.
This method is called in the main sketch in th gameOverManGameOver() method as part of the JOptionPane Dialog Box that displays the Player's End Game Scores.

Ship Class:
On lines 9-16, public method Ship is created. This method takes in each xCoord and yCoord to set up the 3 corners of the triangle being used as the "Ship".
This method is called in the main sketch in void setup().
On lines 18-50, public method placement() is created. This method is used to dictate where on the Display the Ship can go.
The initial values are set as xCoordA = mouseX, xCoordB = mouseX + width/20, xCoordC = mouseX, yCoordA = mouseY, yCoordB = mouseY + height/20, yCoordC = mouseY + height/10
Paremeters are put in place so that the Ship can only move inside a certain portion of the Display and the Ship cannot leave the Display.
If mouseX is less than 0, xCoordA of the Ship is set at 0, xCoordB is set at 0+width/20 and xCoordC is set at 0.
If mouseX is greater than width/4, xCoordA is set at width/4, xCoordB is set at width/4+width/20, and xCoordC is set at width/4.
If mouseY is less than 0, yCoordA is set at 0, yCoordB is set at 0+height/20 and yCoordC is set at 0+height/10.
If mouseY is greater than the height of the display -height/10, yCoordA is set at height-height/10, yCoordB is set at height-height/20 and yCoordC is set at height.
This method is called in the main sketch in void draw().
On lines 52-57, public method showShip() is created. Fill is set at deep red (255,0,0) on the RGB scale.
A triangle is created using the xCoords and yCoords dictated in the Ship Class to crete the Ship itself.
Behind the triangle a rectangle is created using xCoordA and yCoordA with a black fill to sit "invisibly" behind the Ship.
The rectangle is used to dictate the collision detection to work around not using PVectors due to the assignment constraints.
This method is called in the main display in void setup() to display the Ship on the Output Display.

Based on the large number of Bespoke Merthods created across the 3 different classes and how all of the bespoke methods are utilised appropriately in the main sketch.
I have given myself 15 out of 15 for this section.

Part E3 - Mark (10 /10)
-----------------------------

I believe all of the Methods created in my classes were used correctly in the main sketch. 
As I believe all of the Methods used within my classes were used appropriately,
and the classes referenced correctly in the main sketch I'm awarding myself 10 marks out of 10 marks for this section.

Part F1 - Mark (20 /20)
-----------------------------
int array scores is declared in the public class Player at line 3 of the Player Class.
At line 12, the scores array is defined as an integer array which will hold a value for each of the rounds the player completes in their interaction with the game,
and will run for the length of the value of int variable gamesPlayed.
The values stored in the array are created through the input and performance of the Player in the game.
At lines 32-36, public method roundScore() overloaded with variable score dictates that for each round of the game that is played the score that the Player reaches,
is equal to the score stored in the array on that level. e.g. on round 3 player scores 30 points therefore the 3rd score saved in the array will read as 30.
The length of the array is dictated by the Player.
In the main sketch between lines 27-37 methods gameover and player are called.
In the gameover Method the player is requested to inout how many rounds they wish to play. The number they enter dictates how many rounds they will complete in the game.
The number of rounds completed in the game dictates the amount of levels stored in the array.
Further on in the main sketch between lines 67-78 when the Player finishes a round they are asked if they wish to continue to the next round or end the game.
The players decision will either allow the game to continue for the number of rounds they initially entered at the start or end the game early,
thus further dictating the length of the array.

I utilised a 2nd Array to modify the singular Asteroids Method into an Array of repeating Asteroids.
the Asteroids Class is called as an Array Class in the main sketch on line 4.
on line 16 asteroids is set as an array of Asteroids of length 6 dictating that at any given time there will be 6 Asteroids on the Display.
This is then incorporated into a for loop of the length of the Array to create the 6 Asteroids of diameter 30,
that will appear at random points along the Y-Axis at different intervals.
At lines 45-86 of the main sketch, the Asteroids Array is called into number of methods, if statements and loops.
These statements dictate how the Asteroids Array interacts with the display across the void draw() method.

Based on the 2 Arrays I've created which have been created, which have been declared by myself,
and one of which has content input and a size dictated by the form in which the Player interacts with the game I believe I have achieved all aspects of this section.
I therefore award myself 20 marks out of 20 for this section.


Part F2 - Mark (x /20)
-----------------------------

The scores in the array are analysed using the highestScore(), lowestScore() and toString() methods of the Player Class.
The highestScore() method is created on lines 39-49 of the Player Class.
It brings the scores array through a while loop for the length of the number of rounds the player completed.
Each score entered in the array is compared to the last one - if the score is higher than the current variable highestScore than that score becomes the new value of highestScore.
This is repeated until all levels of the array have been put through the while loop.
Whichever score has been deemed the highestScore at the end of the loop is then returned as the value of highestScore.
This highestScore is called in the main sketch during the gameOverManGameOver() Method.
The lowestScore() method is created on lines 51-61 of the Player Class.
It brings the scores array through a while loop for the length of the number of rounds the player completed.
Each score entered in the array is compared to the last one - if the score is lower than the current variable lowestScore than that score becomes the new value of lowestScore.
This is repeated until all levels of the array have been put through the while loop.
Whichever score has been deemed the lowestScore at the end of the loop is then returned as the value of lowestScore.
This lowestScore is called in the main sketch during the gameOverManGameOver() Method.
The toString String Method is created on lines 64-70 of the Player Class.
This method runs the scores array through a for loop the length of the number of rounds played.
For each run of the loop it calls a level of the array and submits that value as the score of that round
Once the loop is completed a list of the scores for each round is displayed.
This method is called in the gameOverManGameOver() method of the main sketch.

Based on the calculations completed on the Arrays I've created I believe I have scored well in this section.
I am therefore awarding myself 15 out of 20 for this section.



*/
