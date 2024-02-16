class Food {
  PVector position = new PVector();
  int size = 10;
  
  Food(int gx, int gy) {
    position.x = gx;
    position.y = gy;
  }
  
  void display() {
    fill(255, 183, 49);
    circle(position.x, position.y, 10);
  }
}
