void setup() {
  
  size(1080, 1080); 
  pixelDensity(2);
  stroke(255);
  noFill();
  noLoop();
  
}

void draw() {
  
  background(0);
   
    float r_x = width/2;
    float r_y = height/2;
    
    test1(r_x,r_y);
    
}

void test1(float originX, float originY) {

  float oldX = 0;
  float oldY = 0;
   
  for (int i = 0; i < 360*100; i++) {
    
    
    
    float r = 500;
    float min_distance = 50;
    float additional_rising_distance = (float(i) / 360) * 2;
    r = (sin(i)*random(10)) + min_distance + additional_rising_distance;
    
    stroke(255 - additional_rising_distance);
    
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
