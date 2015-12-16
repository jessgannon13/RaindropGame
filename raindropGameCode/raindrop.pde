class Raindrop {// declaring all fields  contained within Raindrop Class
  PVector loc, vel, acc; //declare variables and PVectors and intergers
  int diam;
  Raindrop(float x, float y) {
    diam = 30;
    loc= new PVector(x, y);
    vel = new PVector(random(-3, 4), random(-3, 4));
    acc = new PVector(0, .2);
  }
  void display() {
    fill(253);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }
  void fall() {
    loc.y=loc.y + vel.y;  // add velocity to create fall
    vel.add(acc); //add gravity to the game
  }
  void reset() {
    loc.set(random(width),0);
    vel.set(0,1);
    acc.set(0,1);
  }
  boolean isInContactWith(PVector mouse) {  //get rid of the rain
    float d = dist(loc.x, loc.y, mouse.x, mouse.y);   //determine if the mouse is within the circle/in contact
    boolean c;
    if ( d < diam/2) {
      c = true;
    } else {
      c =false;
    }
    return c;
  }
}