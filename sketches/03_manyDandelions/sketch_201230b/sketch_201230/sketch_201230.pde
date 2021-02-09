void setup() {
  
  size(1080, 1080); 
  pixelDensity(2);
  background(0);
  stroke(250);
  noFill();
  noLoop();
  
}

void draw() {
   
  
  for (int i = 0; i < 10; i++) {
   
    float r_x = random(width);
    float r_y = random(height);
    
    test1(r_x,r_y);
    
  }
  
}

void test1(float originX, float originY) {

   
  
  float oldX = 0;
  float oldY = 0;

  for (float i = 0; i < 360; i += 0.1) {
    
    
    float r = 400;
    r = (sin(i)*300) + 100;
    
    float newX = sin(radians(i))*r;
    float newY = cos(radians(i))*r;
    
    if (i > 0) {
      line(oldX + originX,
          oldY + originY,
          newX + originX,
          newY + originY);
    }
    
    oldX = newX;
    oldY = newY;

  }
  
}
