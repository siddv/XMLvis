import processing.xml.*;
XMLElement windXml;
XMLElement[] windValue;
String windUrl;
XMLElement tempXml;
XMLElement[] tempValue;
String tempUrl;
int xValue;
int yValue;
int xValue2;
int yValue2;
int xValue3;
int yValue3;
float xSize;
float ySize;
float are;
float gee;
float bee;
float colourWind;
int xSpeed = 1;
int ySpeed = 1;
int xSpeed2 = 1;
int ySpeed2 = 2;
int xSpeed3 = 2;
int ySpeed3 = 1;
float prexSize;
float preySize;

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
    xValue += xSpeed;
    yValue += ySpeed;
    if(xValue < 0 || xValue > width){
       xSpeed *= - 1;
    }
    if(yValue < 0 || yValue > height){
       ySpeed *= - 1;
    }
}

void moveyoupos2(){
    xValue2 += xSpeed2;
    yValue2 += ySpeed2;
    if(xValue2 < 0 || xValue2 > width){
       xSpeed2 *= - 1;
    }
    if(yValue2 < 0 || yValue2 > height){
       ySpeed2 *= - 1;
    }
}

void moveyoupos3(){
    xValue3 += xSpeed3;
    yValue3 += ySpeed3;
    if(xValue3 < 0 || xValue3 > width){
       xSpeed3 *= - 1;
    }
    if(yValue3 < 0 || yValue3 > height){
       ySpeed3 *= - 1;
    }
}

void draw(){
//  background(000);
  for(int i = 0; i < tempValue.length; i++) {
    println(windValue[i].getContent());
    println(tempValue[i].getContent());
    moveyoupos();
    moveyoupos2();
    moveyoupos3();
    prexSize = int(tempValue[i].getContent());
    preySize = int(tempValue[i].getContent());
    xSize = map(prexSize, 5, 30, 10, 100);
    ySize = map(preySize, 5, 30, 10, 100);
    are = map(preySize,-10,50,0,255);
    gee = 127;
    bee = 127;
    float colourWind = int(windValue[i].getContent());
    ellipse(xValue, yValue, prexSize, preySize); 
    fill(are, gee, bee);
//    noStroke();
    ellipse(xValue2, yValue2, xSize, ySize); 
    fill(bee, gee, are);
//    noStroke();
    ellipse(xValue3, yValue3, xSize, ySize); 
    fill(gee, colourWind, gee);
  }
}    
