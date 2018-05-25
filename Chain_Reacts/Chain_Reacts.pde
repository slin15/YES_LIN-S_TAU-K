int num = (int) random(10) + 25;
Ball[] balls = new Ball[num+1];
Ball x = new Ball();
    
void settings() {
  size(600,600);
}

void setup(){
  for(int i = 0; i < num; i++){
    balls[i] = new Ball();
  }
  x.state = 3;
  balls[num] = x;
}

void draw(){
  background(0);
  for(Ball b : balls){
    b.action();
    b.show();
  }
}

void mouseClicked() {
    x.x = mouseX;
    x.y = mouseY;
    x.state = 1;
}
