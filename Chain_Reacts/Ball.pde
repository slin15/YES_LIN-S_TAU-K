class Ball{
  final static int MOVING = 0;
  final static int GROWING = 1;
  final static int SHRINKING = 2;
  final static int DEAD = 3;
  final float CHANGE_FACTOR = 0.25;
  final float MAX_RADIUS = 50;
  float x, y;
  float size, radius;
  color c;
  int state;
  float speed;
  float angle;
  
  Ball(){
    c = color(random(128,256), random(128,256), random(128,256));
    size = random(30,100);
    radius = size / 2;
    x = random(radius, width - radius);
    y = random(radius, height - radius);
    speed = random(1,5);
    angle = random(360);
  }

  
  void move(){
    if(x + radius >= width || x - radius <= 0){
      angle = 180 - angle;
    }else if(y - radius <= 0 || y + radius >= height){
      angle = 360 - angle;
    }
    
    x += speed * cos(radians(angle));
    y += speed * sin(radians(angle));
  }
  
  void action() {
    if (state == 0) {
      move(); }
    else if (state == 1) {
      grow(); }
    else if (state == 2) {
      shrink(); }
    else {
      size = 0; 
    }
  }
  
  void grow() {
    state = GROWING;
    size++; 
    radius += 0.5;
    if (size >= MAX_RADIUS*2) {
      state = SHRINKING; 
    }
  }
  
  void shrink() {
    state = SHRINKING;
    size--;
    radius -= 0.5;
    if (size <= 0) {
      size = 0;
      state = DEAD; 
    }
  }
  
  boolean touching(Ball a, Ball b) {
    float distance = ;
  }
  
  void show(){
    fill(c);
    ellipse(x,y,size,size);
  }
  
  
}
