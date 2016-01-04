class Catcher{
  PVector loc;
  PImage pacman;
  int diam = 80;

  //int diam;
  
  Catcher(){
  loc = new PVector();
//    diam = tdiam;
 
  }
 
  void display(){
  pacman= loadImage("pacman-facts.png"); //load pacman image
  image(pacman, loc.x, loc.y, diam, diam ); //set it so that it follows the mouse
  }
  
  void update(){
    loc.set(mouseX,mouseY);
  }
  
}
  