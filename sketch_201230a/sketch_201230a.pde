void setup() {
  
  size(1080, 1080); 
  pixelDensity(2);
  background(20, 33, 61);
  stroke(252, 163, 17);
  noFill();
  noLoop();
  
}

void draw() {
  
  translate(width/2,height/2);// bring zero point to the center 
   
  float oldX = 0;
  float oldY = 0;
   
  for (int i = 0; i < 360; i++) {
    
    float r = 300;
    r = (sin(i)*r);
    print(" ", r);
    
    float newX = sin(radians(i))*r;
    float newY = cos(radians(i))*r;
    
    if (i > 0) {
      line(oldX, oldY, newX, newY);
    }
    
    oldX = newX;
    oldY = newY;

    
    //point (sin(radians(i))*25,cos(radians(i))*25);
    
    //bezier(mouseX-(i/2.0), 40+i, 410, 20, 440, 300, 240-(i/16.0), 300+(i/8.0));
  
  }
  
}
