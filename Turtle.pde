class Turtle extends Animal {
  PImage sprite;
  int size;
  boolean flipH;
  
  
  Turtle(int gx, int gy, int gs, float gvx, float gvy) {
    super(gx, gy, gs, gvx, gvy);
    if (velocity.x > 0) {
      flipH = true;
      sprite = loadImage("yellow_bellied_slider.psd_rightH.png");
    }
    
    else {
      sprite = loadImage("yellow_bellied_slider.psd.png");
    }
  }
  
  void move() {
    position.x += velocity.x;
    if (position.x + size >= width || position.x <= 0) {
      velocity.x *= -1;
      flipH = !flipH;
      if (!flipH) {
        sprite = loadImage("yellow_bellied_slider.psd.png");
      }
    
      else {
        sprite = loadImage("yellow_bellied_slider.psd_rightH.png");
      }
    }
  }
  
  void display() {
    image(sprite, position.x, position.y, 50, 50);
  }
  
}
