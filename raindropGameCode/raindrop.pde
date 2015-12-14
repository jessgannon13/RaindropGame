class Raindrop {// declaring all fields  contained within Raindrop Class
  PVector loc, vel, acc;
  int diam;
  Raindrop(float x, float y) {
    diam = 30;
    loc= new PVector(x, y);
    vel = new PVector(random(-5,5),random(-5,5));
    acc = new PVector(0, 0.3);
  }
  void display() {
    fill(253);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }
  void fall() {
    loc.y=loc.y + vel.y;
    vel.add(acc);
  }
   void reset(){
    loc.y = 0;
    vel.set(0,10);
  }
  boolean isInContactWith(PVector mouse) {
    float d = dist(loc.x, loc.y, mouse.x, mouse.y);
      boolean c;
      if( d < diam/2){
        c = true;
      }else{
        c =false;
      }
      return c;
  }
 
}