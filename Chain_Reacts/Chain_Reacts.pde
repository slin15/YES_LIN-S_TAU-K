int num = (int)random(10) + 25;
Ball[] balls = new Ball[num];

void settings() {
  size(600,600); 
}

void setup() {
  for (int i = 0; i < num; i++) {
    balls[i] = new Ball();
  }
}


void draw() {
  background(0);
  for (Ball x: balls) {
    x.move();
    x.show();
  }
}
