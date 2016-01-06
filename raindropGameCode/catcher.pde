class Catcher { //create class catcher aka pacman
  PVector loc; //declare variables
  PImage pacman;
  int diam = 80;




  Catcher() { //constructor
    loc = new PVector();
    pacman= loadImage("pacman-facts.png"); //load pacman image
  }

  void display() {
    noTint();
    image(pacman, loc.x, loc.y, diam, diam ); //set it so that it follows the mouse
  }

  void update() {
    loc.set(mouseX, mouseY);  //resets it back to the mouse
  }
}