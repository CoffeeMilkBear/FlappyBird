ArrayList<Pipe> pipes = new ArrayList<Pipe>();

int pipeSpawnInterval = 60;
int pipeSpawnCounter = 0;
int pipeClearedCounter = 0;
int bestPipeClear = 0;

  /*** game() ********
  * Prints the game  *
  *******************/
  
void game() {

  if (gameOver == false) {

    background(BLACK);
    myBird.printBird();
    myBird.birdGravity();
    
    if (pipeSpawnCounter++ % pipeSpawnInterval == 0) {
      pipes.add(new Pipe(1600));
    }
    
    
    for (Pipe pipe : pipes) {
      pipe.drawPipe();
      pipe.movePipe();
      if ( pipe.didIJustKillABird(myBird) )
        gameOver = true;
    }

    // count how many pipes were cleared
    pipeClearedCounter = 0;
    for (Pipe pipe : pipes) {
      if (pipe.cleared())
        pipeClearedCounter++;
    }
    fill(WHITE);
    text(pipeClearedCounter, 100, 100);

  }

  if (gameOver) {
    
    if (pipeClearedCounter > bestPipeClear) 
      newBest = true;
      else 
      newBest = false;
      
    
    screen = 3;
  }
}
