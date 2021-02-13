public class Asteroids { //Creating Public Class Asteroids.
  private float xCoord; //Private xCoordinate for the Asteroids with Float Data Type.
  private float yCoord; //Private yCoordinate for the Asteroids with Float Data Type.
  private float xSpeed; //Private xSpeed for the Asteroids with Float Data Type. Asteroids only move Horizontally so Y-Speed Value was not necessary.
  private float diameter; //Private Diameter for the Asteroids Shape (Circles) with Float Data Type.

  public float getXCoord() { //Getter Method for xCoordinate for the Asteroids - returns the xCoord.
    return xCoord; //Returns the xCoord as xCoord.
  }

  public float getYCoord() { //Getter Method for yCoordinate for the Asteroids - returns the yCoord.
    return yCoord; //Returns the yCoord as yCoord.
  }

  public float getDiameter() { //Getter Method for Diameter for the Asteroids - returns the Diameter.
    return diameter; //Returns the Diameter as Diameter.
  }

  public float getXSpeed() { //Getter Method for xSpeed for the Asteroids - returns the xSpeed
    return xSpeed; //Returns the xSpeed as xSpeed.
  }

  public void setDiameter(float diameter) { //Setter Method for the Diameter Data Type with a Float Value Diameter.
    this.diameter = diameter; //Sets Diameter as Diameter.
  }

  public void setXCoord(float xCoord) { //Setter Method for the xCoord Data Type with a Float Value xCoord.
    this.xCoord = xCoord; //Sets xCoord as xCoord.
  }

  public void setYCoord(float yCoord) { //Setter Method for the yCoord Data Type with a Float Value yCoord.
    this.yCoord = yCoord; //Sets yCoord as yCoord.
  }

  public void setXSpeed(float xSpeed) { //Setter Method for the xSpeed Data Type with a Float Value xSpeed.
    this.xSpeed = xSpeed; //Sets xSpeed as xSpeed.
  }


  public Asteroids(float diameter) { //Public Constructor to create the Asteroids using the Float Value Diameter as the Diameter of the Circle.
    setDiameter(diameter); //Calls the Diameter Setter to create Diameter as the Diameter of the Asteroids.
    resetAsteroids(); //Calls Private Helper Method resetAsteroids to create the Asteroids again on the Right Edge of the Display.
  }

  public void collide() { //Resets the Asteroids to the right edge of the Display when they collide with the Ship.
    resetAsteroids(); //Calls Private Helper Method resetAsteroids.
  }

  private void resetAsteroids() { //Private Helper Method to reset the Asteroids back to the right edge of the Display when they hit the Ship or reach the left edge of the Display.
    xCoord = random(width + 5, width + 10); //Calls Asteroids at random points along the X-Axis in a small section just outside the Display so each one appears at different times on the Display and not all in a line.
    yCoord = random(diameter/2, height - diameter/2); //Calls Asteroids at random points along the Y-Axis but kept inside the Display so they are visible to dodge.
    xSpeed = random(5, 10); //Calls Asteroids with have a Random xSpeed to make them more/less difficult to avoid at Random. They will only be moved Horizontally.
  }

  public void displayAsteroids() { //Create the Asteroids.
    fill(255); //Asteroids are White to make them easily viewable in black "space"
    noStroke(); //Asteroids will not have a stroke
    ellipse(xCoord, yCoord, diameter, diameter); //Asteroids will be Circularly-Shaped.
  }

  public boolean avoid() { //Method which accomodates results if Ship avoids or collides with the Asteroids.
    boolean lifeLost = false; //sets boolean lifeLost default value as False.
    xCoord = xCoord - xSpeed; //Adds xSpeed Value to the xCoord of the Asteroids to move them across the Display from Right to Left.
    if (xCoord < 0 + diameter/2) { //If an Asteroid reaches the Left Edge of the Display.
      resetAsteroids(); //If Statement calls resetAsteroids Method.
      score++; //Each time an Asteroid is successfully avoided 1 point is added to the Score
      lifeLost = false; //returns lifeLost as false and the Player can continue.
    }
    return lifeLost; //If avoid Method fails, i.e. if Ship collides with an Asteroid return lifeLost
  }
}
