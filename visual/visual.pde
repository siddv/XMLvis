import processing.xml.*;

XMLElement windXml;
XMLElement[] windTitle;
XMLElement[] windDate;
XMLElement[] windVal;
String windUrl;
XMLElement tempXml;
XMLElement[] tempTitle;
XMLElement[] tempDate;
XMLElement[] tempVal;
String tempURL;
XMLElement[] tempdes;
int numVal;
float xPos = random(width);
float yPos = random(height);

void setup(){
  background(000);
  size(480,640);
  frameRate(25);
  windUrl = "http://x2.i-dat.org/archos/archive.rss?source=.WindSpeed";
  windXml = new XMLElement(this, windUrl);
  windVal = windXml.getChildren("channel/item/description");
  tempUrl = "http://x2.i-dat.org/archos/archive.rss?source=.WindSpeed";
  tempXml = new XMLElement(this, tempUrl);
  tempVal = tempXml.getChildren("channel/item/description");
}

void draw(){
//  for(int i = 0; i<windVal.length; i++) {
//    println(windVal[i].getContent());
//    println(tempVal[i].getContent());
//    numVal = int(tempVal);
//    println(mumVal);
//    ellipse(xPos,yPos,10,20);
//    }
fill(255);
noStroke();
ellipse(xPos,yPos,xPos,yPos);
}
