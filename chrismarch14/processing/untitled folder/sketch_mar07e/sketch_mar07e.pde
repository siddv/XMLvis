import processing.xml.*;

XMLElement xml;
XMLElement[] title;
XMLElement[] pubDate;
XMLElement[] value;

void setup(){
  frameRate(1);
  size(500,500);
  background(255);
  String url = "http://rss.news.yahoo.com/rss/topstories";
  XMLElement xml = new XMLElement(this, url);
  title = xml.getChildren("channel/item/title");
  pubDate = xml.getChildren("channel/item/pubDate");
  value = xml.getChildren("channel/item/description");
  
}

void draw(){
  int i = 0;
  while(i<10)
  {
   println(title[i]);
  i+2; 
  }
}
