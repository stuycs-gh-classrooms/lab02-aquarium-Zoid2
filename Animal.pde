class Animal {
  PVector position;
  PVector velocity;
  int size;
  
  Animal(int gx, int gy, int gs, float gvx, float gvy) {
    position = new PVector();
    velocity = new PVector();
    position.x = gx;
    position.y = gy;
    size = gs;
    velocity.x = gvx;
    velocity.y = gvy;
  }
  
  void move() {
    position.x += velocity.x;
    position.y += velocity.y;
    if (position.x + size >= width || position.x <= 0) {
      velocity.x *= -1;
    }
    
    if (position.y + size/2 >= height || position.y <= tankY) {
      velocity.y *= -1;
    }
  }
  
  void display() {
    fill(255, 0, 255);
    rect(position.x, position.y, size, size/2);
  }
}
