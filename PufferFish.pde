class PufferFish extends Animal {
  //Instance Variables
  boolean puff;
  PImage sprite;
 
  //Constructor(s)
  PufferFish (int x, int y) {
    super(x, y);
    puff = false;
    sprite = loadImage("puff_norm.png");
  }
 
  //Methods
  void display() {
    if (puff) {
      sprite = loadImage("puff_expanded.png");
    }
    else {
      sprite = loadImage("puff_norm.png");
    }
    image(sprite, position.x - size/2, position.y - size/2, size, size);
  }
  
  void move() {
    super.move();
    for (int i = 0; i < t.animals.size(); i++) {
      if (collide(t.animals.get(i))) {
        puff = true;
      }
      
      else {
        collided = false;
      }
    }
  }

  
}
