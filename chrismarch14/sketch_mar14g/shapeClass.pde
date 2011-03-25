class Shape {
  float xpos;
  float ypos;
  float are;
  float gee;
  float bee;
  //float shapeX = map(xpos,ypos,50,100);
  //float shapeY = map(xpos,ypos,50,100);
  
  Shape(){
  }
  
  void display(){
  xpos = mouseX;
  ypos = mouseY;
  are  = map(xpos,0,width,0,255);
  gee  = map(xpos,0,height,0,255);
  bee  = map(xpos,0, random(width),0,255);
  println(xpos+" "+ypos);
    rectMode(CENTER);
    stroke(0);
    fill(are,gee,bee);
    if (xpos < 75)
    {
      rect(xpos,ypos,30,30);
    }
    else if (xpos > 125)
    {
      ellipse(xpos,ypos,30,30);
    }
    else
    {
      line(xpos,ypos,width,height);
    }
  }
}
    
  
  
  
