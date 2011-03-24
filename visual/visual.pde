import processing.xml.*;

XMLElement xml;
XMLElement[] windTitle;
XMLElement[] windDate;
XMLElement[] windVal;

void setup(){
  background(255);
  size(480,640);
  frameRate(25);
  String url = "http://x2.i-dat.org/archos/archive.rss?source=.WindSpeed";
//  XMLElement xml = new XMLElement(this, url);
  windVal = xml.getChildren("channel/item/description");
}

void draw()
{
  for(int i = 0; i<windVal.length; i++) {
    println(windVal[i].getContent());
}
}
