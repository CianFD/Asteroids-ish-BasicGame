public class Player { //creating public Class Player to create the Scoring and Lives Mechanisms for the Game.
  private String playerName; //private String variable playerName
  private int[] scores; //private int array scores that will be used to hold the scores of each round in an array - to then be pulled when necessary to display and also to analyse for the lowest/highest scores.
  private int scoreCount; //private int variable scoreCount.

  public Player(String playerName, int gamesPlayed) { //public method with 2 variables - String variable playerName from above, and int variable gamesPlayed which will be defined below as the size of the int scores array, dictating the array to hold a score for each round played in the game.
    if (playerName.length() < 10) { //if the Name the Player enters is less than 10 characters.
      this.playerName = playerName; //the Name the Player entered is used as the PlayerName String Variable.
    } else { //if the Name the Player entered is more than 10 Characters.
      this.playerName = playerName.substring(0, 10); //the PlayerName Variable becomes the Name the Player entered up to the first 10 characters with any subsequent characters not recorded.
    }
    scores = new int[gamesPlayed]; //scores value is dictated to be an integer array which will hold a value for each of the rounds the player completes in their interaction with the game.
    scoreCount = 0; //sets the initial score for the Player as 0.
  }

  public String getPlayerName() { //public getter for playerName String Variable.
    return playerName; //returns playerName as playerName
  }

  public int[] getScores() { //public getter for getScores int array Variable.
    return scores; //returns Scores
  }

  public void setPlayerName(String playerName) { //public playerName Setter for String Variable playerName.
    this.playerName = playerName.substring(0, 10); //sets playerName entered in the gameOver Variable Dialogue Box as the playerName up to a limit of 10 Characters.
  }

  public void setScores(int[] scores) { //public Scores Setter for the int Array variable scores
    this.scores = scores; //sets scores variable as scores.
  }

  public void roundScore(int score) { //public method roundScore using int variable score.
    if (score >= 0) { //if the score variable is equal or greater than 0.
      scores[scoreCount] = score; //scores  array with the length of variable scoreCount is equal to the variable score.
      scoreCount++; //scoreCount is increased by 1.
    }
  }

  public int highestScore() { //creates public int method highestScore
    int highestScore = scores[0]; //int variable highestScore is equal to the scores Array of Length 1
    int s = 1; //int variable s is equal to 1;
    while (s < scoreCount) { //while int variable s is less than the scoreCount
      if (scores[s] > highestScore) { //if the scores Array of length s is greater than the current highestScore.
        highestScore = scores[s]; //the scores Array of length s becomes the new highestScore
      }
      s++; //int variable s is increased by 1 each time the while loop is ran.
    }
    return highestScore; //once the while loop is completed the current highestScore variable is returned as the value for int variable highestScore to be displayed during the EndGame Display.
  }

  public int lowestScore() { //creates public int method highestScore
    int lowestScore = scores[0]; //int variable lowestScore is equal to the scores Array of Length 1
    int l = 1; //sets int variable l as equal to 1.
    while (l < scoreCount) { //while int variable l is less than the value of int variable scoreCount
      if (scores[l] < lowestScore) { //if the current value of the scores array is less than lowestScore recorded
        lowestScore = scores[l]; //scores array value becomes the value of the lowestScore.
      }
      l++; //value of int variable l is increased by one each time the while loop is performed.
    }
    return lowestScore; //once the while loop is completed the current lowestScore variable is returned as the value for int variable lowestScore to be displayed during the EndGame Display.
  }


  public String toString() { //public toString Method which converts the mixture of String and int values to represent them as a singular String Version.
    String str = "Scores for " + playerName + "\n"; //sets String variable str as "Scores for *Player Name Player Entered in gameOver JOPtionPane Prompt*" and then a line break.
    for (int i = 0; i < scoreCount; i++) { //for loop incorporating the values of scoreCount as the length of the loop
      str = str + "    Score " + (i+1) + ": " + scores[i] + "\n"; //during the for loop the str String variable is edited to include the final score of each round then a line break making a list of each round scores by the time the for loop ends.
    }
    return str; //returns the current valur of str after completing the loop series as the value of the toString method.
  }
}
