/*********************************************************
*  Name: David Park, Henry Rosa                          *
*  Course: ICS 3U Pd. 8                                  *
*  Final Project: Flappy Quimera                         *
*  Purpose: 1-player Flappy Bird                         *
*  Due Date: June 8, 2020                                *
*********************************************************/

int screen;
int money = 1000;
color birdColour = color(255); 
boolean gameOver = false;

Bird myBird = new Bird(255);

void setup() {
  size(1600, 900); 
  // automatic colour set to white 

  screen = 0; // change to skip to other scenes

  // 0: start menu
  // 1: shop menu
  // 2: game
}


void draw() {

  if (screen == 0) {
    startMenu();
  } else if (screen == 1) {
    shop();
  } else if (screen == 2) {
    game();
  } else if (screen == 3) { 
    endingMenu();
  }
}
