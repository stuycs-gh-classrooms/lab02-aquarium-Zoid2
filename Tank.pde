class Tank {
  int x;
  int y;
  int w;
  int h;
  int f;
  ArrayList<Animal> animals;
  ArrayList<Food> food;
  
  Tank(int gx, int gy, int gw, int gh, int gf) {
    x = gx;
    y = gy;
    w = gw;
    h = gh;
    f = gf;
    animals = new ArrayList<Animal>();
    food = new ArrayList<Food>();
  }
  
  void display() {
    noStroke();
    fill(125);
    rect(x, 0, w, h);
    fill(0, 255, 255);
    rect(x, y, w, h - f);
    fill(194, 178, 128);
    rect(x, height - f, w, f);
    for (int i = 0; i < animals.size(); i++) {
      animals.get(i).display();
    }
    for (int i = 0; i < food.size(); i++) {
      food.get(i).display();
    }
  }
  
  void moveAnimals() {
    for (int i = 0; i < animals.size(); i++) {
      animals.get(i).move();
    }
  }
  
  void hungerAnimals() {
    for (int i = 0; i < animals.size(); i++) {
      animals.get(i).hunger--;
      if (animals.get(i).hunger == 0) {
        animals.remove(i);
      }
    }
  }
  
  void scavengeAnimals() {
    for (int i = 0; i < animals.size(); i++) {
      animals.get(i).scavenge(food);
    }
  }
  
  void addAnimal(int x, int y) {
    if (key == '1') {
      animals.add(new Animal(x, y, 10, random(-10, 10), random(-10, 10)));
    }
    if (key == '2') {
      animals.add(new Turtle(x, h-f, 50, random(-1, 1), random(-1, 1)));
    }
    if (key == '3') {
      animals.add(new DiagFish(x, y, 10, pow(-1, int(random(0, 1))), pow(-1, int(random(0, 1)))));
    }
    if (key == '4') {
      animals.add(new BettaFish(x, y));
    }
    if (key == '5') {
      animals.add(new PufferFish(x, y));
    }
  }
  
  void addFood() {
    food.add(new Food(mouseX, mouseY));
  }
}
