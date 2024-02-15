class BettaFish extends Animal {
  
  BettaFish(int gx, int gy, int gs, float gvx, float gvy) {
    super(gx, gy, gs, gvx, gvy);
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
                } else {
                    t.animals.remove(this);
                }
            }
        }
    }
  }

  void display() {
    fill(0, 0, 255);
    square(position.x, position.y, size);
  }
}
