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
String tempUrl;
float xValue = 0;
float yValue = 0;
float xSize = 0;
float ySize = 0;
float are;
float gee;
float bee;

void setup(){
  background(000);
  size(480,640);
  frameRate(25);
  windUrl = "http://x2.i-dat.org/archos/archive.rss?source=.WindSpeed";
  windXml = new XMLElement(this, windUrl);
  windTitle = windXml.getChildren("channel/item/title");
  windDate = windXml.getChildren("channel/item/pubDate");
  windValue = windXml.getChildren("channel/item/description");
  tempUrl = "http://x2.i-dat.org/archos/archive.rss?source=.Temp_AtriumA_gnd";
  tempXml = new XMLElement(this, tempUrl);
  tempTitle = tempXml.getChildren("channel/item/title");
  tempDate = tempXml.getChildren("channel/item/pubDate");
  tempValue = tempXml.getChildren("channel/item/description");

}

void draw(){
// background(000);
  for(int i = 0; i < tempTitle.length; i++) {
    println(windValue[i].getContent());
    println(tempValue[i].getContent());
//    xValpre = int(tempValue[i].getContent());
    xValue = random(height);
    yValue = random(height);
    xSize = int(tempValue[i].getContent());
    ySize = int(tempValue[i].getContent());
    are = map(xSize,0,width,0,255);
    ellipse(xValue,yValue,xSize,ySize);
    fill(255);
  }
}
