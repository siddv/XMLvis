Car myCar1;
Car myCar2;
Car myCar3;

void setup(){
  size(200,200);
  myCar1 = new Car(color(255,0,0), 0, 100, 2);
  myCar2 = new Car(color(0,0,255), 0, 10, 1);
  myCar3 = new Car(color(0,255,0), 0, 50, 4);
}

void draw(){
  background(255);
  myCar1.move();
  myCar1.display();
  myCar2.move();
  myCar2.display();
  myCar3.move();
  myCar3.display();
}
  
