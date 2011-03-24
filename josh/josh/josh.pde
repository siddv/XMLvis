import processing.xml.*;
XMLElement xml;
XMLElement[] description;
//XMLElement[] title;

Ball ball1;
Ball ball2;

void setup() {
  size(400,400);
  frameRate(60);
  noStroke();
  smooth();
  ball1 = new Ball(64);
  ball2 = new Ball(32);
  String url = "http://x2.i-dat.org/archos/archive.rss?source=.Temp_AtriumB_1st";
  xml = new XMLElement(this,url);
  description = xml.getChildren("channel/item/description");
  //description = xml.getChildren("channel/item/title");
}

void draw() {
  //background(255);
  ball1.move();
  ball2.move();
  ball1.display();
  ball2.display();
 
for(int i = 0; i<description.length; i++) {
println(description[i].getContent());
 }
  
}
