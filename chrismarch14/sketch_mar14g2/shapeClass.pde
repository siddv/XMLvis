class Shape {
  float xpos;
  float ypos;
  float are;
  float gee;
  float bee;
  float shapeX;
  float shapeY;
  
  Shape(){
  }
  
  void display(){
  xpos = mouseX;
  ypos = mouseY;
  are  = map(xpos,0,width,0,255);
  gee  = map(xpos,0,height,0,255);
  bee  = map(xpos,0, random(width),0,255);
  shapeX = map(mouseX,0,mouseY,20,40);
  shapeY = map(mouseY,0,mouseX,20,40);
  println(xpos+" "+ypos);
    rectMode(CENTER);
    stroke(0);
    fill(are,gee,bee);
    if (xpos < 250)
    {
      rect(xpos,ypos,shapeX,shapeY);
    }
    else
    {
      ellipse(xpos,ypos,shapeX,shapeY);
    }
/*    else
    {
      line(xpos,ypos,width,height);
    }*/
  }
}
    
  
  
  
