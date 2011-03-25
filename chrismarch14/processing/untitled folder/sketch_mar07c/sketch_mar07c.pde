PFont f;
float posX;
float posY;

void setup(){
  size(500, 500);
  frameRate(1); 
  background(255);
  f = loadFont("Meiryo-48.vlw");
}

void draw(){
  background(255);
  textFont(f,24);
  fill(10);
  posX = random(height);
  posY = random(width);
  text("hello world!",posX,posY);
}
  
