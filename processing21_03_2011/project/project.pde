import processing.xml.*;
XMLElement xml;
XMLElement[] windTitle;
XMLElement[] windDate;
XMLElement[] windValue;
float xValue = 0;
float yValue = 0;
float xSize = 0;
float ySize = 0;


void setup(){
  background(000);
  size(480,640);
  frameRate(25);
  String feedUrl = "http://x2.i-dat.org/archos/archive.rss?source=.WindSpeed";
  XMLElement xml = new XMLElement(this, feedUrl);
  windTitle = xml.getChildren("channel/item/title");
  windDate = xml.getChildren("channel/item/pubDate");
  windValue = xml.getChildren("channel/item/description");

}

void draw(){
  for(int i = 0; i<windValue.length; i++) {
    println(windValue[i].getContent());
    xValue = random(width);
    yValue = random(height);
    xSize = int(windValue[i].getContent());
    ySize = int(windValue[i].getContent());
    ellipse(xValue,yValue,xSize,ySize);
    fill(255);
  }
}
