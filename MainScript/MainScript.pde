ArrayList<Ball> blues;
ArrayList<Ball> reds;

int nbrBalls;

void setup(){
  size(600, 600);
  frameRate(30);
  
  nbrBalls = 20;
  blues = new ArrayList<Ball>();
  reds = new ArrayList<Ball>();
  
  for(int i=0; i<nbrBalls; i++){
    Ball blue = new Ball(200, i*PI/nbrBalls, false);
    Ball red = new Ball(200, i*PI/nbrBalls, true);
    
    blues.add(blue);
    reds.add(red);
  }
}

void draw(){
  background(0);
  translate(width/2, height/2);
  stroke(255, 50);
  noFill();
  
  //ellipse(0, 0, 400, 400);
  
  for(int i=0; i<nbrBalls; i++){
    blues.get(i).update();
    blues.get(i).display();
    reds.get(i).update();
    reds.get(i).display();
  }
}
