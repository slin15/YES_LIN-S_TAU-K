class Ball {

float x, y;
int r,g,b;
float speed;

Ball() {
  x = random(600);
  y = random(600);
  r = (int) random(256); 
  g = (int) random(256);
  b = (int) random(256);
  speed = random(10,20);
}

void move() {
 if(x > width) {
    x = width;
    speed = -speed;
  }
  if(y > height) {
    y = height;
    speed = -speed;
  }
  if(x < 0) {
    x = 0;
    speed = -speed;
  }
  if(y < 0) {
    y = 0;
    speed = -speed;
  }
  oneOf(); 
}

void oneOf() {
  int opX = (int) random(4);
  int opY = (int) random(4);
  if (opX == 1)
    x += speed;
  else if (opX == 2)
    x -= speed;
  if (opY == 1)
    y += speed;
  else if (opY == 2)
    y -= speed;
}

void show() {
  fill(r,g,b);
  ellipse(x,y,40,40);
}

}
