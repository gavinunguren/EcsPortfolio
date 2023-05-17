class Log {
  int x, y, health, speed;
  PImage l1;

  Log() {
    speed = int(random(5, 13));
    x = width;
    y = 472;
    l1 = loadImage("log1.png");
  }

  void display() {
    imageMode(CENTER);
    l1.resize(128, 128);
    image(l1, x, y);
  }

  void move () {
    if (x<-50) {
      x = width+50;
    }
    x = x - speed;
  }
}
