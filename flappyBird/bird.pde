class Bird {

  int x;
  int y;
  color colour;
  int thicc;

  float velocity = 0;
  float gravity = 1;   

  Bird (color c) {
    thicc = 32;
    y = 1;
    x = 300;
    colour = c;
  }

   /*** printBird() **************************************
   * Prints the bird in draw()                           *
   ******************************************************/

  void printBird() {
    fill(myBird.colour);
    ellipse(x, y, thicc, thicc);
  }

   /*** collidingWith() **********************************
   * Calculates Bird's Y position affected by gravity    *
   ******************************************************/

  int birdGravity() {

    if (y <= 0 || y >= 900) {
      gameOver = true;
    } 
    velocity += gravity;
    y += (int) velocity;

    return y;
  }
}  

 /*** keyPressed() ********************************************
 * Checks to see if UP arrow has been clicked during the game *
 *************************************************************/

void keyPressed() { 

  if (screen == 2) {
    if (keyCode == UP) {
      myBird.velocity = -20;
    }
  }
}
