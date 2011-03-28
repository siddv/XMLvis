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
int xValue;
int yValue;
float xSize;
float ySize;
float are;
float gee;
float bee;
float colourWind;
int xSpeed;
int ySpeed;
float prexSize;
float preySize;

void moveyoupos(){
    xSpeed = int(colourWind);
    ySpeed = int(colourWind);
    xValue += xSpeed;
    yValue += ySpeed;
    if(xValue < 0 || xValue > width){
       xSpeed *= - 1;
    }
    if(yValue < 0 || yValue > height){
       ySpeed *= - 1;
    }
}

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
    prexSize = int(tempValue[i].getContent());
    preySize = int(tempValue[i].getContent());
    xSize = map(prexSize, -10, 50, 10, 100);
    ySize = map(preySize, -10, 50, 10, 100);
    moveyoupos();
    colourWind = int(windValue[i].getContent());
    are = map(xSize,0,50,0,255);
    gee = 127;
    bee = 127;
    ellipse(xValue,yValue,xSize,ySize);
    fill(are,gee,bee);
  }
}
