class Shape {
  import processing.xml.*;
  XMLElement xml;
  XMLElement[] windTitle;
  XMLElement[] windDate;
  XMLElement[] windValue;
  float xpos;
  float ypos;
  float are;
  float gee;
  float bee;
  float shapeX;
  float shapeY;
  String feedUrl;
  
  
  void display(){
      feedUrl = "http://x2.i-dat.org/archos/archive.rss?source=.WindSpeed";
      xml = new XMLElement(this, feedUrl);
      windTitle = xml.getChildren("channel/item/title");
      windDate = xml.getChildren("channel/item/pubDate");
      windValue = xml.getChildren("channel/item/description");
    for(int i = 0; i<windValue.length; i++) {
      xpos = random(width);
      ypos = random(height);
      are  = map(xpos,0,width,0,255);
      gee  = map(xpos,0,height,0,255);
      bee  = map(xpos,0, random(width),0,255);
      shapeX = map(mouseX,0,mouseY,20,40);
      shapeY = map(mouseY,0,mouseX,20,40);
      println(xpos+" "+ypos);
      rectMode(CENTER);
      stroke(0);
      fill(are,gee,bee);
      ellipse(xpos,ypos,shapeX,shapeY);
    }
  }
}
    
  
  
  
