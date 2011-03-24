import processing.xml.*;

XMLElement windXml;
XMLElement[] windTitle;
XMLElement[] windDate;
XMLElement[] windVal;
XMLElement tempXml;
XMLElement[] tempTitle;
XMLElement[] tempDate;
XMLElement[] tempVal;

void setup(){
  background(255);
  size(480,640);
  frameRate(25);
  String windUrl = "http://x2.i-dat.org/archos/archive.rss?source=.WindSpeed";
  windXml = new XMLElement(this, windUrl);
  windVal = windXml.getChildren("channel/item/description");
  String tempUrl = "http://x2.i-dat.org/archos/archive.rss?source=.WindSpeed";
  tempXml = new XMLElement(this, tempUrl);
  tempVal = tempXml.getChildren("channel/item/description");
}

void draw()
{
  for(int i = 0; i<windVal.length; i++) {
    println(windVal[i].getContent());
    println(tempVal[i].getContent());
    
}
}
