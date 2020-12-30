import processing.pdf.*;

void setup() {
  
  size(1080, 1080); 
  pixelDensity(2);
  noFill();
  noLoop();
  
  
}

void draw() {
  
  background(0, 0, 0);
  
  

  float x = width/2;
  float y = height/2;
  
  stroke(105, 105, 105);
  strokeWeight(0.8);
   
  translate(x,y);
  
  //for (float i = 1; i < width; i++) {
  
      //rect(180, 130, 160, 200);
      //rotate(-300);
   //}
   
  //for (float i = 1; i < height; i++) {
      
      //triangle(30, 75, 58, 20, 86, 75);
      //rotate(100);
      
  //}
  
  for (float i = 1; i < height; i++) {
      
      circle(270, 35, 70);
      rotate(300);  
  }
  
  float x2 = width/4;
  float y2 = height/4;
  
  stroke(105, 105, 105);
  strokeWeight(0.2);
  
  translate(x2,y2);
  
  for (float i = 1; i < height; i++) {
      
      circle(570, 35, 57);
      rotate(363);  
  }
  
  float x3 = width/6;
  float y3 = height/6;
  
  stroke(105, 105, 105);
  strokeWeight(0.4);
  
  translate(x3,y3);
  
  for (float i = 1; i < height; i++) {
      
      circle(570, 15, 70);
      rotate(36);  
    
  }
  
  
  
 
}
  
