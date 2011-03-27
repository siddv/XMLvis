import processing.xml.*;
XMLElement windXml;
XMLElement[] windTitle;
XMLElement[] windDate;
XMLElement[] windValue;
String windUrl;
XMLElement tempXml;
XMLElement[] tempTitle;
XMLElement[] tempDate;
XMLElement[] tempValue;
float xValue = 0;
float yValue = 0;
float xSize = 0;
float ySize = 0;


void setup(){
  background(000);
  size(480,640);
  frameRate(25);
  windUrl = "http://x2.i-dat.org/archos/archive.rss?source=.WindSpeed";
  windXml = new XMLElement(this, windUrl);
  windTitle = windXml.getChildren("channel/item/title");
  windDate = windXml.getChildren("channel/item/pubDate");
  windValue = windXml.getChildren("channel/item/description");
  tempUrl = "http://x2.i-dat.org/archos/archive.rss?source=.WindSpeed";
  tempXml = new XMLElement(this, tempUrl);
  tempTitle = windXml.getChildren("channel/item/title");
  tempDate = windXml.getChildren("channel/item/pubDate");
  tempValue = windXml.getChildren("channel/item/description");

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
