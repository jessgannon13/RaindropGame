class Catcher{
  PVector loc;
  PImage pacman; 

  //int diam;
  
  Catcher(){
  loc = new PVector();
//    diam = tdiam;
 
  }
 
  void display(){
  pacman= loadImage("pacman-facts.png"); //load pacman image
  image(pacman, loc.x, loc.y, 80, 80 ); //set it so that it follows the mouse
  }
  
  void update(){
    loc.set(mouseX,mouseY);
  }
  
}
  