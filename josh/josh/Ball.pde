class Ball {
  float r;   
  float x,y; 
  float xspeed,yspeed; 
  
  
  
  Ball(float tempR) {
    r = tempR;
    x = random(width);
    y = random(height);
    xspeed = random( - 5,3);
    yspeed = random( - 5,3);
  }
  
  void move() {
    x += xspeed; 
    y += yspeed; 
   if (x > width || x < 0) {
      xspeed *= - 1;
    }
    if (y > height || y < 0) {
      yspeed *= - 1;
    }
  }
  
    void display() {
    noStroke();
    smooth();
    fill(random(255),random(255),random(255));
    ellipse(x,y,r*2,r*2);
    
  }
}
