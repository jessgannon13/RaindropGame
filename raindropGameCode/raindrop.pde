class Raindrop {// declaring all fields  contained within Raindrop Class
  PVector loc, vel, acc; //declare variables and PVectors and intergers
  int diam;
  PImage Ghost;
  color c;

  Raindrop(float x, float y) {  //constructor
    diam = 20;
    loc= new PVector(x, y);
    vel = new PVector(random(-3, 3), random(-3, 3));
    acc = new PVector(0, .001);
    Ghost =loadImage("Ghost.png");  //display ghost
    c = color(random(255),random(255), random(255));  //color variable
   
      
  }
  void display() {

  
    tint(c);   //to change the color of each ghost
    image(Ghost, loc.x, loc.y, diam, diam);   //show ghost on screen
  }
  void fall() {
    loc.y=loc.y + vel.y;  // add velocity to create fall
    vel.add(acc); //add gravity to the game
  }
  void reset() {  //reset the ghosts falling after they reach bottom of screen
    loc.y=0;
    vel.set(0, 10);
    
  }
  boolean isInContactWith(PVector pacman) {  //get rid of the rain
    float d = dist(loc.x, loc.y, mouse.x, mouse.y);   //determine if the ghost is inside pacman 
    boolean c;
    if ( d < diam/2 + 35) {  //if it touches diam/2 + 35 (bigger range)
      c = true;
    } else {
      c =false;
    }
    return c;
  }
}