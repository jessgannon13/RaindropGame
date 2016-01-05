class Catcher{
  PVector loc;
  PImage pacman;
  int diam = 80;
   

  //int diam;
  
  Catcher(){
  loc = new PVector();
//    diam = tdiam;
 pacman= loadImage("pacman-facts.png"); //load pacman image
  }
 
  void display(){
 noTint();
  image(pacman, loc.x, loc.y, diam, diam ); //set it so that it follows the mouse
  }
  
  void update(){
    loc.set(mouseX,mouseY);
  }
  
}
  