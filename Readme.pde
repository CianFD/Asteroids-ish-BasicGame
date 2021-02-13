/*
Name : Cian Dunne
 
 Brief description of the game developed: 
 Player is initially prompted to enter how many rounds they wish to partake in.
 The amount entered here dictates how many times the Player will play.
 Play then begins showing an area of black representing space.
 Player controls a small red triangle - triangle is basic representation of a ship.
 Ship follows the mouse movements in a certain area range of X & Y coordinates.
 An array of circles representing Asteroids fly from the right side of the screen towards the left at random Y Coordinates.
 The Asteroids each have a randomised speed between a certain range.
 The Ship has to dodge the oncoming Asteroids.
 For each Asteroid dodged, the Player earns a point.
 Each time the Ship and Asteroid collide the Player loses a Life.
 After 5 Lives Lost the Player receives a round end screen - the score for that round is displayed and they are offered to end the game now or move to the next round.
 If they choose to move on to the next round play resets and the game begins again.
 If the player chooses to end the game or they complete the number of rounds entered at the start the game ends and a final score display is shown.
 At this screen the score for each round is shown, it also dictates the Player's Highest and Lowest Scores.
 A loose story is incorporated in the beginning display dialogue boxes, the round end boxes and the game over box.
 
 
 Known bugs/problems:
 1. Originalled planned to have collision detectors hit directly to the Ship and the Asteroids.
 However, my research determined as the Ship was Triangular in shape this would require PVectors which the Constraints dictated were not allowed.
 As a workaround, I created a "hitbox", an invisible rectangle that encompassed the triangle. Instead of triggering Life Lost if the Asteroids hit the Ship directly, Life Lost would be triggered if the Asteroid collided with the HitBox.
 This allowed me to keep inside the constraints but unfortunately it meant that the Life Lost would triggered in some instances in the space around the Ship and not the Ship itself.
 2. The Collision Method is supposed to attach itself directly to the Ship - therefore if the Ship is hit by an Asteroid it will lead to a Life Lost.
 However, at the moment I am unable to constrain the Hit Collision Detectors directly to the Ship on the X-Axis - it appears to be following the Mouse's Position instead.
 On the Ship Class the Mouse Position on the X-Axis is constrained within 1/4 of the Display.
 The Hit Collision methods should also be constrained within that portion of the Display but inside it seems to apply to the entirity of the X-Axis.
 At this time I am unsure how this can be rectified.
 3. If anything but a Number is entered in the gameOver Field the Display will crash with a Null Exception. At this time I am unsure how to rectify this so please only enter numbers here.
 4. The exit prompt at the end of the game seems to decide not to work at times - if you press ok you will either receive the proper exit and the display will disappear - or alternatively will get could not run the sketch error and Java will crash.
 
 
 Any sources referred to during the development of the assignment (be precise and specific with references) {there no need to reference lecture/lab materials}:
 1. triangle() \ Language (API) \ Processing 3+. [ONLINE] Available at https://processing.org/reference/triangle_.html. Accessed [10th March 2020].
 2. Fun Programming - A space-triangle flying through the galaxy. [ONLINE] Available at https://funprogramming.org/59-A-space-triangle-flying-through-the-galaxy.html. Accessed [10th March 2020].
 3. Collision Detection. [ONLINE] Available at http://www.jeffreythompson.org/collision-detection/poly-circle.php. Accessed [14th March 2020].
 4. Coding Challenge #4: Purple Rain in Processing - Youtube. [ONLINE] Available at https://www.youtube.com/watch?time_continue=538&v=KkyIDI6rQJI&feature=emb_title. Accessed [18th March 2020].
 5. 9.4: Arrays and Loops - Processing Tutorial - Youtube. [ONLINE] Available at https://www.youtube.com/watch?v=am6e1U2BHkA. Accessed [18th March 2020].
 6. Object toString() Method in Java - GeeksforGeeks. [ONLINE] Available at https://www.geeksforgeeks.org/object-tostring-method-in-java/. Accessed [20th March 2020].
 7. str() \ Language (API) \ Processing 3+. [ONLINE] Available at https://processing.org/reference/strconvert_.html. Accessed [21st March 2020].
 8. while() \ Language (API) \ Processing 3+. [ONLINE] Available at https://processing.org/reference/while.html. Accessed [21st March 2020].
 9. Data types in Java : Learn about int, char, float, double, long. Accessed [21st March 2020].
 
 */
