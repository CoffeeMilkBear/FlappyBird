  /*** rectCollision *******************
  * Checks to see if bird hits pipe    *
  *************************************/

boolean rectCollision(int x1, int y1, int w1, int h1, int x2, int y2, int w2, int h2) {
  if (x1 < x2 + w2 &&
   x1 + w1 > x2 &&
   y1 < y2 + h2 &&
   y1 + h1 > y2) {
    return true;
  }
  return false;
}

class Pipe {

  int x;
  int y;

  int width = 100;
  int opening = 400;

  int pipe1h = 0;
  int pipe2h = 0;
  int pipe2y = 0;

  int speed = 5;

  Pipe (int _x) {
    x = _x;
    y = (int) random(900 - opening);

    pipe1h = y;
    pipe2h = 900 - opening - pipe1h;
    pipe2y = pipe1h + opening;
  }

  /*** drawwPipe() ***
  * draws the pipes  *
  *******************/
  
  void drawPipe() {
    fill(GREEN);
    rect(x, 0, width, pipe1h);

    fill(GREEN);
    rect(x, pipe2y, width, pipe2h);
  }

  /*** movePipe() ************************
  * Moves the pipe towards the player    *
  ***************************************/

  void movePipe() {
    x -= speed;
  }
  
  /*** cleared() *********************************
  * checks if bird crossed the pipe successfully *
  ***********************************************/
  
  boolean cleared() {
    return (x < 300);
  }
  
  /*** didIJustKillABird() ***************
  * Checks if the bird hit the pipes     *
  ***************************************/

  boolean didIJustKillABird(Bird bird) {

    boolean topPipeHit    = rectCollision(bird.x, bird.y, bird.thicc, bird.thicc, x, 0, width, pipe1h);
    boolean bottomPipeHit = rectCollision(bird.x, bird.y, bird.thicc, bird.thicc, x, pipe2y, width, pipe2h);
      
    if (topPipeHit || bottomPipeHit) {
      return true;
    }
    return false;
  }
}
