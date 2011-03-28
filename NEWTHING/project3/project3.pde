import processing.xml.*;
XMLElement windXml;
XMLElement[] windValue;
String windUrl;
XMLElement tempXml;
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


void setup(){
  background(000);
  size(480,640);
  frameRate(25);
  windUrl = "http://x2.i-dat.org/archos/archive.rss?source=.WindSpeed";
  windXml = new XMLElement(this, windUrl);
  windValue = windXml.getChildren("channel/item/description");
  tempUrl = "http://x2.i-dat.org/archos/archive.rss?source=.Temp_AtriumA_gnd";
  tempXml = new XMLElement(this, tempUrl);
  tempValue = tempXml.getChildren("channel/item/description");
}

void moveyoupos(){
    xSpeed = 2;
    ySpeed = 2;
    xValue += xSpeed;
    yValue += ySpeed;
    if(xValue < 0 || xValue > width){
       xSpeed *= - 1;
    }
    if(yValue < 0 || yValue > height){
       ySpeed *= - 1;
    }
}

void draw(){
  for(int i = 0; i < tempValue.length; i++) {
    println(windValue[i].getContent());
    println(tempValue[i].getContent());
    moveyoupos();
    ellipse(xValue, yValue, 10, 10); 
  }
}    
