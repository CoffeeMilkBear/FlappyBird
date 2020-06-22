exitButtons exit = new exitButtons(525,700,500,150,1);
boolean newBest;

  /*** endingMenu() *************************
  * prints the ending screen after the game *
  ******************************************/
  
void endingMenu() {
 
    if (newBest) {
      
        background(GREEN);
        textSize(100);
        fill(WHITE);
        text("You died", 550,200);
        
        textSize(75);
        text("New Best!",575,400);
        text("You scored "+ bestPipeClear +" pipes.", 400,600);
           bestPipeClear = pipeClearedCounter;
         
    } else { 
      
      background(RED);
  
  textSize(100);
  
  fill(WHITE);
  text("You died", 550, 200);
  
  textSize(75);
  text("You crossed "+ pipeClearedCounter +" pipes.", 400,400);        
  text("Your best run: "+ bestPipeClear +" pipes.", 350,600);    
        
    }
 
    fill(GOLD);
rect(525,700,500,150);

textSize(50);
fill(BLACK);
text("Return to Menu",580,790);
 
  exit.draw();
  exit.update();
}


class exitButtons extends Button {

   int whichAttribute;
   
  /*** exitButtons() ******************
  * prints the exit button at the end *
  ************************************/

  exitButtons(int _x, int _y, int _w, int _h, int attr) {
    super(_x, _y, _w, _h);
    whichAttribute = attr;
  }
  
  /*** onClick() (in exitButtons) **************
  * returns to main menu after clicking button *
  *********************************************/

  void onClick() { // ADDITIONAL DAMAGES
     if (whichAttribute == 1) {
       screen = 0;  
     }
     
  }
}
