public class Ship { //Creating Public Class Ship.
  private int xCoordA;  //first X Coordinate of the triangle that represents the ship.
  private int yCoordA;  //first Y Coordinate of the triangle that represents the ship.
  private int xCoordB;  //second X Coordinate of the triangle that represents the ship.
  private int yCoordB;  //second Y Coordinate of the triangle that represents the ship.
  private int xCoordC;  //third X Coordinate of the triangle that represents the ship.
  private int yCoordC;  //third Y Coordinate of the triangle that represents the ship.

  public void Ship() { //public Ship method calling each X/Y Coord.
    setXCoordA(xCoordA); //set xCoordA as xCoordA.
    setYCoordA(yCoordA); //set yCoordA as yCoordA.
    setXCoordB(xCoordB); //set xCoordB as xCoordB.
    setYCoordB(yCoordB); //set yCoordB as yCoordB.
    setXCoordC(xCoordC); //set xCoordC as xCoordC.
    setYCoordC(yCoordC); //set yCoordC as yCoordC.
  }

  public void placement() { //public method to define the placement of the Ship and what areas it can move around in.
    xCoordA = mouseX; //xCoordA will follow position of mouse on X-Axis.
    xCoordB = mouseX + width/20; //xCoordB will follow position of mouse on X-Axis plus the width of the display/20.
    xCoordC = mouseX; //xCoordC will again follow position of mouse on X-Axis so it lines up with xCoordA.

    if (mouseX < 0) { //if mouse position goes outside left side of display.
      xCoordA = 0; //xCoordA will remain at edge of display
      xCoordB = 0 + width/20; //xCoordB will remain at width/20.
      xCoordC = 0; //xCoordC will remain at edge of display, in line with xCoordA.
    }

    if (mouseX > width/4) { //if mouse position moves past first quarter of X-Axis.
      xCoordA = width/4; //xCoordA will not move past this position.
      xCoordB = width/4 + width/20; //xCoordB will reach this position and add width/20.
      xCoordC = width/4; //xCoordC will not move past this position, again in line with xCoordA.
    }

    yCoordA = mouseY; //sets yCoordA as position of mouse on Y-Axis.
    yCoordB = mouseY + height/20; //sets yCoordB as position of mouse on Y-Axis plus the height of the display/20.
    yCoordC = mouseY + height/10; //sets yCoordC as position of mouse on Y-Axis plus the height of the display/10.

    if (mouseY < 0) { //if mouse position moves beyond top of display.
      yCoordA = 0; //yCoordA will remain at top of display.
      yCoordB = 0 + height/20; //yCoordB will remain at height of the display/20.
      yCoordC = 0 + height/10; //yCoordC will remain at height of the display/10.
    }

    if (mouseY > height-height/10) { //if the bottom of the ship reaches the bottom of the display.
      yCoordA = height-height/10; //yCoordA will not move past this point to ensure ship's shape remains consistent.
      yCoordB = height-height/20; //yCoordB will not move past this point to ensure ship's shape remains consistent
      yCoordC = height; //yCoordC will remain at bottom of display visible.
    }
  }

  public void showShip() { //public constructor method to show the Ship on the Display
    fill(0); //using Black Fill for Rectangle to conceal it against the Background of the Display
    rect(xCoordA, yCoordA, width/20, height/10); //creating Black "invisible" Rectangle around the Ship. Rectangle will be used for Collision Detection to avoid use of PVectors.
    fill(255, 0, 0); //changes fill to a bright red using RGB.
    triangle(xCoordA, yCoordA, xCoordB, yCoordB, xCoordC, yCoordC); //creates triangle using the X/Y Coordinates specified above.
  }

  /* List of Getters for each of the X/Y Coords that make up the Ship.
   Coords were also used for the "Invisible Rectangle".*/

  public int getXCoordA() { //getter for xCoordA.
    return xCoordA; //returns xCoordA with no changes.
  }

  public int getYCoordA() { //getter for yCoordA.
    return yCoordA; //returns yCoordA with no changes.
  }

  public int getXCoordB() { //getter for xCoordB.
    return xCoordB; //returns xCoordB with no changes.
  }

  public int getYCoordB() { //getter for yCoordB.
    return yCoordB; //returns yCoordB with no changes.
  }

  public int getXCoordC() { //getter for xCoordC.
    return xCoordC; //returns xCoordC with no changes.
  }

  public int getYCoordC() { //getter for xCoordA.
    return yCoordC; //returns yCoordC with no changes.
  }

  /*Created list of Setters for each X-Coordinate
   and list of Setters for each Y-Coordinate.*/

  public void setXCoordA(int xCoordA) { //setter for xCoordA using int xCoordA variable.
    this.xCoordA = xCoordA; //sets xCoordA as xCoordA.
  }

  public void setYCoordA(int yCoordA) { //setter for yCoordA using int yCoordA variable.
    this.yCoordA = yCoordA; //sets yCoordA as yCoordA.
  }

  public void setXCoordB(int xCoordB) { //setter for xCoordB using int xCoordB variable.
    this.xCoordB = xCoordB; //sets xCoordB as xCoordB.
  }

  public void setYCoordB(int yCoordB) { //setter for yCoordB using int yCoordB variable.
    this.yCoordB = yCoordB; //sets yCoordB as yCoordB.
  }

  public void setXCoordC(int xCoordC) { //setter for xCoordC using int xCoordC variable.
    this.xCoordC = xCoordC; //sets xCoordC as xCoordC.
  }

  public void setYCoordC(int yCoordC) { //setter for yCoordC using int yCoordC variable.
    this.yCoordC = yCoordC; //sets yCoordC as yCoordC.
  }
}
