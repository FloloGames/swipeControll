Player player;
PVector pmouse;
PVector mouse;
PVector dir;
void setup() {
  size(600, 600);
  player = new Player(width/2, height/2, 50);
  dir = new PVector(0, 0);
}
void draw() {
  background(0);
  player.show();
  player.move();
  stroke(255);
  strokeWeight(4);
  if (mousePressed) {
    line(pmouse.x, pmouse.y, mouseX, mouseY);
  }
}
PVector setdir() {
  PVector d = new PVector(0, 0);//d = dir;
  d.x = mouseX-pmouse.x;
  d.y = mouseY-pmouse.y;
  d.normalize();
  d.x = round(d.x);
  d.y = round(d.y);
  println(d);
  return d;
}
void mouseReleased() {
  dir = setdir();
}
void mousePressed() {
  pmouse = new PVector(mouseX, mouseY);
}
