Tank t;
int tankX = 0;
int tankY = 50;
int floorH = 100;
int tankW;
int tankH;


void setup() {
  size(600, 600);
  tankW = width;
  tankH = height - 50;
  t = new Tank(tankX, tankY, tankW, tankH, floorH);
  t.display();
}//setup


void draw() {
  background(150);
  t.moveAnimals();
  t.display();
  t.hungerAnimals();
  t.scavengeAnimals();
}

void mousePressed() {
  if (mouseButton == LEFT) {
    t.addAnimal(mouseX, mouseY);
  }
  
  if (mouseButton == RIGHT) {
    t.addFood();
  }
}
