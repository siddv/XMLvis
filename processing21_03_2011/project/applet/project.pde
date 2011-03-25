import processing.xml.*;
XMLElement xml;
XMLElement[] title;
XMLElement[] date;
XMLElement[] numValue;

void setup(){
  background(000);
  size(400,800);
  frameRate(25);
  String feedUrl = "http://x2.i-dat.org/archos/archive.rss";
  XMLElement xml = new XMLElement(this, feedUrl);
  numValue = xml.getChildren("channel/item/description");
}

void draw(){
  println(numValue);
}
