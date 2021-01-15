int counter = 0;

void setup() {
  
  size(1080, 1080); 
  pixelDensity(2);
  background(0, 0, 0);
  noFill();
  noLoop();
  
}

void draw() {
   
    float r_x = width/2;
    float r_y = height/2;

    strokeWeight(1.8);
    translate(r_x, r_y);
      
    kreis();
   
}

void keyPressed() {
  println("key: "+key+" keyCode: "+keyCode);
  if ( key == ' ' )    save("saved"+ counter  +".png");
}


void kreis() {
  
  float oldX = 0;
  float oldY = 0;
  
  float degrees              = 360 * random(40, 70);
  float step                 = 0.1;
  float rotationOfCanvas     = random(30, 90);
  float numberOfIterations   = degrees / step;
  
  float number_of_subcircels_x = round(random (2, 10));
  float number_of_subcircels_y = round(random (2, 10));
  
  float outerR_base = random(120, 200);
  float innerR_x_base = random(60, 250);
  float innerR_y_base = random(60, 250); 
  
  for (float i = 0; i < degrees; i += step) {
    
    // percent
    float percent = i / degrees;
    
    // rotation
    rotate((radians(rotationOfCanvas) / numberOfIterations));
        
    stroke(
        220,
        220,
        220
        , 60 + (30*(1-percent)));

    ///// parameters
    // outer circle
    float outerR = outerR_base; // + i*0.01;
    float outerX = sin(radians(i))*outerR;
    float outerY = cos(radians(i))*outerR;
    
    // inner circle
    float innerR_x = innerR_x_base + i*0.01;
    float innerR_y = (innerR_y_base + i*0.01) * 1; 

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
