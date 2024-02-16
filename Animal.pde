class Animal {
  PVector position;
  PVector velocity;
  int size;
  int hunger;
  boolean collided;
  
  Animal(int gx, int gy, int gs, float gvx, float gvy) {
    position = new PVector();
    velocity = new PVector();
    position.x = gx;
    position.y = gy;
    size = gs;
    velocity.x = gvx;
    velocity.y = gvy;
    hunger = 2000;
  }
  
  Animal(int gx, int gy) {
    this(gx, gy, int(random(50, 100)), int(random(1, 6)), int(random(1, 6)));
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
  
  void scavenge(ArrayList<Food> food) {
    for (int i = 0; i < food.size(); i++) {
      if (collide(food.get(i))) {
        food.remove(i);
        hunger += 200;
      }
    }
  }
  
  boolean collide (Animal other) {
      if (other != this) {
        return (dist(this.position.x, this.position.y, other.position.x, other.position.y) <= (this.size/2 + other.size/2));
      }
      else {
        return false;
      }
    }
    
  boolean collide (Food other) {
    return (dist(this.position.x, this.position.y, other.position.x, other.position.y) <= (this.size/2 + other.size/2));
  }
  
}
