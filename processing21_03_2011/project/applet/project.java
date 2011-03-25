import processing.core.*; 
import processing.xml.*; 

import processing.xml.*; 

import java.applet.*; 
import java.awt.Dimension; 
import java.awt.Frame; 
import java.awt.event.MouseEvent; 
import java.awt.event.KeyEvent; 
import java.awt.event.FocusEvent; 
import java.awt.Image; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class project extends PApplet {


XMLElement xml;
XMLElement[] title;
XMLElement[] date;
XMLElement[] numValue;

public void setup(){
  background(000);
  size(400,800);
  frameRate(25);
  String feedUrl = "http://x2.i-dat.org/archos/archive.rss";
  XMLElement xml = new XMLElement(this, feedUrl);
  numValue = xml.getChildren("channel/item/description");
}

public void draw(){
  println(numValue);
}
  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#FFFFFF", "project" });
  }
}
