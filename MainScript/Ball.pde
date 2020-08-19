class Ball{
  float initialRadius;
  float radius;
  float angle;
  boolean way;
  
  Ball(float r, float a, boolean w){
    this.initialRadius = r;
    this.angle = a;
    this.way = w;
    
    this.update();
  }
  
  void update(){
    if(this.way) this.angle += 0.015;
    if(!this.way) this.angle -= 0.015;
    if(this.way) this.radius = this.initialRadius + 20*cos(10*this.angle);
    if(!this.way) this.radius = this.initialRadius + 20*cos(10*(this.angle+PI/2));
  }
  
  void display(){
    noStroke();
    if(this.way) fill(255, 0, 0);
    if(!this.way) fill(0, 0, 255);
    rotate(this.angle);
    ellipse(this.radius, 0, 5, 5);
    rotate(-this.angle);
  }
}
