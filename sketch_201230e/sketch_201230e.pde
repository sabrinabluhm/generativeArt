import processing.pdf.*;

void setup() {
  
  size(1080, 1080); 
  pixelDensity(2);

  noFill();
  noLoop();
  
  beginRecord(PDF, "filename.pdf"); 
  
}

void draw() {
  
  background(235,235, 235);
   
    float r_x = width/2;
    float r_y = height/2;

    strokeWeight(1.5);
    
    translate(r_x, r_y);
      
    kreis();
    
   endRecord();
   save("cross.png");
  
}

void kreis() {

  float oldX = 0;
  float oldY = 0;
  
  float degrees              = 360 * 60;
  float step                 = 0.1;
  float rotationOfCanvas     = 40;
  float numberOfIterations   = degrees / step;
  
   
  for (float i = 0; i < degrees; i += step) {
    
    // percent
    float percent = i / degrees;
    
    // rotation
    rotate((radians(rotationOfCanvas) / numberOfIterations));
       
    // colors
   /* stroke(
        (255*(1-percent)),
        50 + (155*(1-percent)),
        255
        , 80);*/
        
    stroke(
        10,
        10,
        10
        , 60 + (30*(1-percent)));

    ///// parameters
    // outer circle
    float outerR = 180; // + i*0.01;
    float outerX = sin(radians(i))*outerR;
    float outerY = cos(radians(i))*outerR;
    
    // inner circle
    float innerR_x = 80 + i*0.01;
    float innerR_y = (200 + i*0.01) * 1; 
    float number_of_subcircels_x = 3;
    float number_of_subcircels_y = 6;
    
    float innerX = sin(radians(i*number_of_subcircels_x)) * innerR_x;
    float innerY = cos(radians(i*number_of_subcircels_y)) * innerR_y;
   
    // new corrdinates
    float newX = outerX - innerX;
    float newY = outerY - innerY; 
    
    // drawing
    if (i > 0) {
      line(oldX + 0,
          oldY + 0,
          newX + 0,
          newY + 0);
    }
    
    oldX = newX;
    oldY = newY;


  }
  

  
}
