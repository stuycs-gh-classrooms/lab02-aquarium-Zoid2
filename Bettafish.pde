class BettaFish extends Animal {
  PImage sprite;
  
  
  BettaFish(int gx, int gy) {
    super(gx, gy);
    sprite = loadImage("bettafish.png");
  }

  void move() {
    super.move();
    for (int i = 0; i < t.animals.size(); i++) {
        Animal otherAnimal = t.animals.get(i);
        if (otherAnimal != this && otherAnimal.getClass() == BettaFish.class) {
            if (position.x + size/2 >= otherAnimal.position.x &&
                    position.x <= otherAnimal.position.x + otherAnimal.size / 2 &&
                    position.y + size/2 >= otherAnimal.position.y &&
                    position.y <= otherAnimal.position.y + otherAnimal.size / 2) {
                int sof = (int) random(2);
                if (sof == 0) {
                    t.animals.remove(i);
                    hunger += 1000;
                } else {
                    t.animals.get(i).hunger += 1000;
                    t.animals.remove(this);
                }
            }
        }
    }
  }

  void display() {
    image(sprite, position.x, position.y, size, size);
  }
}
