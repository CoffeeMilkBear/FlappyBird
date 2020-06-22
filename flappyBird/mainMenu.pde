mainMenuButtons shopButton = new mainMenuButtons(500,600,700,200,1);
mainMenuButtons playButton = new mainMenuButtons(500,300,700,200,2);
  
class mainMenuButtons extends Button {

   int whichAttribute;

  mainMenuButtons(int _x, int _y, int _w, int _h, int attr) {
    super(_x, _y, _w, _h);
    whichAttribute = attr;
  }

  /*** onClick() (in mainMenuButtons()) *****************
  * takes player to shop screen or game via the buttons *
  ******************************************************/
  
  void onClick() { // ADDITIONAL DAMAGES
     if (whichAttribute == 1) {
       screen = 1;   
     } else if (whichAttribute ==2) {
       gameOver = false;
       pipeSpawnCounter = 0;
       myBird.y = 400;
       myBird.velocity = 0;
       newBest = false;
      pipes = new ArrayList<Pipe>();
      screen = 2;
     }
     
  }
}

  /*** startMenu() *************
  * prints the starting screen *
  *****************************/

void startMenu() { 

  background(BLACK);

  fill(WHITE);
  textSize(100);
  text("Flappy Quimera", 450, 110);

  fill(WHITE);
  textSize(50);
  text("Made by:", 25, 650);
  text("David Park", 25, 775);
 text("Henry Rosa", 25, 825);

  fill(RED);
  rect(500, 300, 700, 200); // Use for button size
  rect(500,600,700,200);

  fill(WHITE);
  textSize(75);
  text("Play Game", 650, 425);
  text("Shop",750,725);
  
  playButton.update();
  playButton.draw();
  shopButton.update();
  shopButton.draw();
  
}
