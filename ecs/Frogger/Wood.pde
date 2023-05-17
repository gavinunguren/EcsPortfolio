class Wood {
  int x, y, health, speed;
  PImage l2;

  Wood() {
    speed = int(random(5, 13));
    x = width;
    y = 261;
    l2 = loadImage("log2.png");
  }

  void display() {
    imageMode(CENTER);
    l2.resize(128, 128);
    image(l2, x, y);
  }

  void move () {
    if (x<-50) {
      x = width+50;
    }
    x = x - speed;
  }
}
