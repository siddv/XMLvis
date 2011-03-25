Car myCar1;
Car myCar2;
Car myCar3;

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
  size(480,640);
  frameRate(25);
  String feedUrl = "http://x2.i-dat.org/archos/archive.rss?source=.WindSpeed";
  XMLElement xml = new XMLElement(this, feedUrl);
  windTitle = xml.getChildren("channel/item/title");
  windDate = xml.getChildren("channel/item/pubDate");
  windValue = xml.getChildren("channel/item/description");
  myCar1 = new Car(color(255,0,0), 0, 100, 2);
  myCar2 = new Car(color(0,0,255), 0, 10, 1);
  myCar3 = new Car(color(0,255,0), 0, 50, 4);
  
}

void draw(){
  background(255);
    for(int i = 0; i<windValue.length; i++) {
    println(windValue[i].getContent());
    xValue = random(width);
    yValue = random(height);
    xSize = int(windValue[i].getContent());
    ySize = int(windValue[i].getContent());
    ellipse(xValue,yValue,xSize,ySize);
    fill(255);
    myCar1.move();
    myCar1.display();
    myCar2.move();
    myCar2.display();
    myCar3.move();
    myCar3.display();
    }
}
  
