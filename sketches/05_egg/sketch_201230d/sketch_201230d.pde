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
    stroke(255,255,255, 50);
    test1(r_x,r_y);
    
}

void test1(float originX, float originY) {

  float oldX = 0;
  float oldY = 0;
   
  for (float i = 0; i < 360*100; i += 0.1) {
    
    // drawing
    float r = 0;
    float min_distance = 800;
    float additional_rising_distance = (i / 360) * 1.6;
    //r = (sin(i)*random(10)) + min_distance + additional_rising_distance;
    r = min_distance;
    
    // outer circle
    //float outerX = sin(radians(i))*150;
    //float outerY = cos(radians(i))*150;
    
    float r1 = 450 - (2 * 360*10 / i) ;
    float r2 = 500 - (3 * 360*10 / i) ;
    
    float outerX = sin(radians(i))*r1;
    float outerY = cos(radians(i))*r2;
    
    // inner circle
    float innerX = sin(radians(i*0.5))*20;
    float innerY = cos(radians(i*0.3))*20;

    // new corrdinates
    float newX = outerX - innerX;
    float newY = outerY - innerY; 
    
    // drawing
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
