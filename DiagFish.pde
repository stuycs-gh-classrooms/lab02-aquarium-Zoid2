class DiagFish extends Animal {
  PImage sprite;

  DiagFish(int gx, int gy, int gs, float gvx, float gvy) {
    super(gx, gy, gs, gvx, gvy);
  }

  void display() {
    sprite = loadImage("diagFish.png");
    image(sprite, position.x, position.y, 50, 50);
  }

}
