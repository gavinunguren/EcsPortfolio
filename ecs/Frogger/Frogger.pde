//Gavin Unguren | April 26 2023 | Frogger App
boolean play;
Frog johnny;
Log log1;
Wood log2;
int score;
float logDist, log2Dist;

void setup() {
  size(500, 700);
  play = false;
  johnny = new Frog();
  log1 = new Log();
  log2 = new Wood();
  score = 0;
}

void draw() {
  println(logDist);
  if (!play) {
    startScreen();
  } else {
    logDist = dist(johnny.x, johnny.y, log1.x, log1.y);
    log2Dist = dist(johnny.x, johnny.y, log2.x, log2.y);
    background(100);
    drawBackground();
    infoPanel();
    johnny.display();
    log1.display();
    log1.move();
    log2.display();
    log2.move();
    if (logDist<50) {
      johnny.x = log1.x;
      score = score + 1;
      //log1.x = width;
    }
    if (log2Dist<50) {
      johnny.x = log2.x;
      score = score + 1;
      //log2.x = width;
    }
    if (johnny.x<0 || johnny.x>width || johnny.y<0 || johnny.y>height) {
      gameOver();
    }
  }
}

void keyPressed() {
  if (key == 'w') {
    johnny.move('u');
  } else if (key == 'a') {
    johnny.move('l');
  } else if (key == 's') {
    johnny.move('d');
  } else if (key == 'd') {
    johnny.move('r');
  } else if (key == ' ') {
    play = true;
    log1.speed = int(random(5, 13));
    log2.speed = int(random(5, 13));
  }
}

void drawBackground () {
  fill(#437C44);
  rect(0, 0, width, 400);
  rect(0, 500, width, 200);
  fill(0, 0, 200);
  rect(0, 400, width, 100);
  fill(0, 0, 200);
  rect(0, 200, width, 100);
  //image(bg, 0, 0);
}

void startScreen () {
  background(0);
  textSize(30);
  textAlign(CENTER);
  text("Welcome to Frogger!", width/2, 440);
  text("by Gavin Unguren", width/2, 470);
  text("Press space bar to start the game!", width/2, 500);
}

void gameOver () {
  background(0);
  fill(255);
  textSize(40);
  textAlign(CENTER);
  text("Game Over :(", width/2, 400);
  text("Score: ", width/2, 440);
  text("Level: ", width/2, 480);
  noLoop();
}

void infoPanel() {
  fill(128, 128);
  rect(0, 0, width, 80);
  fill(0);
  textSize(20);
  text("Score: " + score, 40, 70);
}
