class Player {
  PVector loc;
  float size;
  float speed;
  Player(float x, float y, float s) {
    loc = new PVector(x, y);
    size = s;
    speed = 10;
  }
  void show() {
    fill(255, 0, 255);
    noStroke();
    ellipse(loc.x, loc.y, size, size);
  }
  void move() {
    PVector s = new PVector(0, 0);
    s.set(dir);
    s.mult(speed);
    loc.add(s);
    loc.x = constrain(loc.x, size/2, width-size/2);
    loc.y = constrain(loc.y, size/2, height-size/2);
  }
}
