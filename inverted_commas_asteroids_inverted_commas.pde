import javax.swing.*; //imports the Swing Class of Java into the coding to incorporate the variety of JOptionPane Boxes.

Ship ship; //calls the Ship Class into Main Project.
Asteroids[] asteroids; //calls the Asteroids Class into Main Project. Asteroids Class will be incorporated into an Array.
Player player; //calls the Player Class into the Main Project.

int lifeLost = 0; //sets the int variable lifeLost as 0 for the moment.
int score = 0; //sets the int variable score as 0 for the moment.
int roundOver = 5; //sets the int variable roundOver as 5 for the moment.
int round = 0; //sets the int variable round as 0 for the moment.
int gameOver; //sets the int variable gameOver.

void setup() {
  size(800, 800); // decided on square display - felt 1000x1000 was too much so settled for 800.
  noCursor(); //removed cursor so ship would stand in it's own right.
  asteroids = new Asteroids[6]; //calls the Asteroids Class into an Array.
  for (int a = 0; a < asteroids.length; a++) { //incorporates Asteroids Array into a For Loop lasting the Duration of the Array.
    asteroids[a]= new Asteroids(30.0); //during the Asteroids For Loop the Array and For Loop collaborate to create Asteroids of Diameter 30.
  }

  ship = new Ship(); //calls ship class to create Ship in Display.

  /*gameOver Variable is created as an Int Variable.
   The JOptionPane Command will display an Dialog Box introducing the Player to the basic plot of the Game and asking them how many rounds/tournaments they wish to play.
   The Player enters the number they wish to play.
   The Integer.ParseInt Command then converts that to become the value of the int variable gameOver.*/
  gameOver = Integer.parseInt(JOptionPane.showInputDialog("    You awaken inside the Cockpit of a Warp Speeder.\n"
    + "    An automated voice advises you from overhead:\n"
    + "    'Welcome!'\n"
    + "    'You have been chosen to attempt to survive the Asteroid Belt of Albatrax!'\n"
    + "    'Be praised for your attempts will entertain his Highness - the High Ruler Equinoxis.'\n"
    + "    'Please enter how many attempts you wish to make to save your life.'"));

  /*calls the Player method from the Player Class.
   The player method intakes the name of the Player (up to a limit of 10 Characters).
   The Name entered is held in the playerName String variable and is used in the Score Displays at the end of the Game.*/
  player = new Player(JOptionPane.showInputDialog("Tell his Highness Your Name, Constestant"), gameOver);
}

void draw() {
  background(0); //sets Background as blank black background to represent flying through dark space.
  ship.placement(); //calls the placement method from the Ship Class. This method dictates how the Ship moves around the Display.
  ship.showShip(); //calls the showShip method. This method displays the Ship on the Display.

  for (int a = 0; a < asteroids.length; a++) { //for loop created incorporating the length of the Asteroids Array.

    if (asteroids[a].avoid()) { //if the Ship successfully avoids an Asteroid and it hits the Left Side of the Display.
      score++; //A Point is added to the Player's Score.
    }

    boolean collision = impact(asteroids[a], ship); //calls the impact method as a boolean method.
    if (collision == true) { //if the collision method returns true.
      asteroids[a].collide(); //calls the Collide Method from the Asteroids Class and resets the Asteroid that hit the Ship back to the Right Edge of the Display.
      lifeLost++; //if the collision returns true the Player loses a life and the lifeLost variable gains a point.
    }

    if (lifeLost < roundOver) { //if the number of Lives Lost is less than the roundOver Variable
      asteroids[a].displayAsteroids(); //the displayAsteroids Method is called displaying the Asteroids in conjunction with the Array to display multiple Asteroids at one time.
    } else { //if the number of Lives Lost equals the roundOver Variable
      player.roundScore(score); //the roundScore Method from the Player Class is called. This Method holds the Player's Score for that Round, to be used during the End Game Display.
      round++; //the number of rounds completed is inscreased by 1.
      if (round<gameOver) { //if the number of rounds completed is less than the number of rounds the Player dictated into the gameOver variable at the start of the Game.
        /*If the number of rounds completed is less than the number of rounds the player dictated into the gameOver variable at the start of the Display,
         a JOptionPane Message is called displaying what has happened in the story at the end of that round.
         The Player's Score at the end of that round is also displayed.
         The Player is then given the choice to continue on and play the next round, or end the game now.*/
        int reply = JOptionPane.showConfirmDialog(null, 
          "'Your body floats in the darkness of dead space'.\n'You have appeased the High Ruler with your score of " + score
          + ".'\n'Do you wish to attempt the Asteroid Belt of Albatrax again?'", 
          "Attempt to survive the Belt Again?", 
          JOptionPane.YES_NO_OPTION);
        if (reply == JOptionPane.YES_OPTION) { //if the Player chooses Yes to continuing the game and playing the next Round.
          newRound(); //calls the newRound method. This method resets the Player's Score and number of Lives Lost to 0 to start a new Round.
        } else {
          gameOverManGameOver();
          /*if the Player chooses not to continue and play the next round,
           This calls the gameOverManGameOver method to end the Game and Display the Player's Scores.*/
        }
      } else {
        gameOverManGameOver();
        /*If Player finishes playing through the full amount of rounds entered in the gameOver variable earlier,
         This calls the gameOverManGameOver method to end the Game and Display the Player's Scores.*/
      }
    }
  }
}

boolean impact(Asteroids asteroids, Ship ship) {
  float asteroidDistanceX = abs(asteroids.getXCoord() - ship.getXCoordA() - ship.getXCoordB());
  float asteroidDistanceY = abs(asteroids.getYCoord() - ship.getYCoordA() - ship.getYCoordC());

  if (asteroidDistanceX >= ship.getXCoordA() && asteroidDistanceX <= ship.getXCoordB() && asteroidDistanceY <= ship.getYCoordC() && asteroidDistanceY >= ship.getYCoordA()) {
    return true; //impact method returns as true indicating the ship has collided with an asteroid
  } else {
    return false; //impact method returns as false and the asteroid has sailed past the ship without a collision.
  }
}

void newRound() { //creates a newRound method that will be called at the begin of each round of the game.
  lifeLost = 0; //new round lifes are reset to 0.
  score = 0; //new round score is reset to 0.
}

/*Creates the End Game Display Method.
 The Game is concluded and a new JOptionPane Display Message appears explaining how the game ends.
 The Player's Scores for each Round is then Displayed.
 Finally, the Player's Highest and Lowest Scores are then Displayed, encompassed into the Story.
 The Display then exits.*/
void gameOverManGameOver() {
  JOptionPane.showMessageDialog(null, "'" + player.getPlayerName() + "! The Systems cannot resurrect your body again!'\n'You will die in the glorious knowledge that you have entertained the High Ruler Equinoxis!'\n\n"
    + "You attempted to survive the Asteroid Belt " + round + " times."
    + "\n\n"                                        + player.toString()
    + "\n\nYou appeased his Highness with your Score of: " + player.highestScore()
    + "\nYou disappointed his Highness with your Score of: " + player.lowestScore());
  exit(); //closes the Display once Player has finished reviewing their scores.
}
