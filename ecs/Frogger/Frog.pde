class Frog {
  int x, y, health;
  PImage f1;

  Frog() {
    x = width/2;
    y = height-100;
    f1 = loadImage("frog1.png");
  }

  void display() {
    imageMode(CENTER);
    f1.resize(128, 128);
    image(f1, x, y);
  }

  void move(char dir) {
    if (dir == 'u') {
      y = y -30;
    } else if (dir == 'd') {
      y = y +30;
    } else if (dir == 'l') {
      x = x- 30;
    } else if (dir == 'r') {
      x = x+ 30;
    }
  }
}
