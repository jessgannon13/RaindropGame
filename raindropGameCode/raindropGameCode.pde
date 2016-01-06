
int score=0; //declare variables
int count=100;
int gameover;
PVector mouse; //delare a P
ArrayList <Raindrop> raindrops = new ArrayList();  //declare new arraylist
//Raindrop[] r = new Raindrop[count];      //declare a new Raindrop called r
Catcher c;

// On your own, create an array of Raindrop objects instead of just one
// Use the array instead of the single object
// You can start out by just using the single Raindrop as you test


void setup() {
  size(1200, 800);
  gameover=1;
  imageMode(CENTER);
  mouse = new PVector();
  c = new Catcher();
  raindrops.add(new Raindrop(mouseX, mouseY));
  //for(int i = 0; i <count; i++){//initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  //  r[i] = new Raindrop(random(width), 0);
}//Initialize r. The parameters used are the initial x and y positions


void draw() {
  if (gameover == 1) {
    mouse.set(mouseX, mouseY);//set value of mouse as mouseX,mouseY
    background(0, 200, 255);
    textSize(100);  //set score
    text(score, width/2, height/3);
    raindrops.add(new Raindrop(random(width), 0));  // add raindrops across the entire top of the screen randomly along x- axis
    c.update(); //see function
    c.display();  //see function
    for (int i = raindrops.size()-1; i >= 0; i--) {
      Raindrop r = raindrops.get(i);
      r.display();
      r.fall();

      if (r.isInContactWith(mouse)) {  //remove raindrops if they are in pacman's stomach
        raindrops.remove(i);
      }
      if (r.loc.y > height + r.diam/2) {
        r.reset();
        score = score +1;  //increase score everytime a ghost gets by pacman
      }
    }
    if (score==51) {
      gameover= 0;
    }
  }
  if (gameover == 0) {  //gameover once score hits 50

    textSize(200);
    fill(#FF0808);
    textAlign(CENTER);
    text("GAME OVER", width/2, height/2);
  }

  if (mousePressed) {
    raindrops.clear(); //restart
    gameover=1;
    fill(255);
    score = 0;
  }
}