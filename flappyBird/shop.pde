 /*** shop() ***********
 * draws the shop menu *
 **********************/

void shop() {

  background(BLACK);

  fill(WHITE);
  textSize(100);
  text("Buy Colours", 550, 110);

  // icons for row 1 

  fill(GREEN);
  rect(160, 200, 200, 200); 

  fill(RED);
  rect(520, 200, 200, 200);

  fill(BLUE);
  rect(880, 200, 200, 200);

  fill(GOLD);
  rect(1240, 200, 200, 200);

  // icons for row 2

  fill(PINK);
  rect(160, 500, 200, 200); 

  fill(SILVER);
  rect(520, 500, 200, 200);

  fill(TEAL);
  rect(880, 500, 200, 200);

  fill(SKY_BLUE);
  rect(1240, 500, 200, 200);

  fill(GREEN);
  rect(600, 775, 400, 100); // back to menu button

  textSize(50);
  fill(WHITE);
  text("Back to Menu", 640, 845);

  greenButton.draw();
  greenButton.update();
  redButton.draw();
  redButton.update();
  blueButton.draw();
  blueButton.update();
  goldButton.draw();
  goldButton.update();
  pinkButton.draw();
  pinkButton.update();
  silverButton.draw();
  silverButton.update();
  tealButton.draw();
  tealButton.update();
  skyButton.draw();
  skyButton.update();

  exitButton.draw();
  exitButton.update();
}

shopButtons greenButton = new shopButtons(160, 200, 200, 200, 1);
shopButtons redButton = new shopButtons(520, 200, 200, 200, 2);
shopButtons blueButton = new shopButtons(880, 200, 200, 200, 3);
shopButtons goldButton = new shopButtons(1240, 200, 200, 200, 4);
shopButtons pinkButton = new shopButtons(160, 500, 200, 200, 5);
shopButtons silverButton = new shopButtons(520, 500, 200, 200, 6);
shopButtons tealButton = new shopButtons(880, 500, 200, 200, 7);
shopButtons skyButton = new shopButtons(1240, 500, 200, 200, 8);
shopButtons exitButton = new shopButtons(600, 775, 400, 100, 9);


class shopButtons extends Button {

  int whichAttribute;

  shopButtons(int _x, int _y, int _w, int _h, int attr) {
    super(_x, _y, _w, _h);
    whichAttribute = attr;
  }

  /*** onClick (of shopButtons) *********************************
   * changes the colour of the bird when user presses the button *
   **************************************************************/

  void onClick() { // ADDITIONAL DAMAGES
    if (whichAttribute == 1) {
      myBird.colour = color(0, 128, 0);
    } else if (whichAttribute == 2) {
      myBird.colour = color(255, 0, 0);
    } else if (whichAttribute == 3) {
      myBird.colour = color(0, 0, 255);
    } else if (whichAttribute == 4) {
      myBird.colour = color(255, 215, 0);
    } else if (whichAttribute == 5) {
      myBird.colour = color(255, 192, 203);
    } else if (whichAttribute == 6) {
      myBird.colour = color(192, 192, 192);
    } else if (whichAttribute == 7) {
      myBird.colour = color(0, 128, 128);
    } else if (whichAttribute == 8) {
      myBird.colour= color(135, 206, 235);
    } else if (whichAttribute == 9) {
      screen = 0;
    }
  }
}
