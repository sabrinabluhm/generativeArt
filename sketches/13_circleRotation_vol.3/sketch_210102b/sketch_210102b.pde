  color whitesmoke = color(245,245,245);
  color black = color(0,0,0);
  color dimgray = color(105,105,105);
  color gray = color(128,128,128);
  color gainsboro = color(220,220,220);
  color midgnitblue = color(25,25,112);
  color darkslategray = color(47,79,79);
  color darkred = color(139,0,0);
  
  int imageCount = 0;
  
  
  
void setup() {
  
  size(1080, 1080); 
  pixelDensity(2);
  noFill();
  noLoop();
  smooth(8);
  
}

void keyPressed() {
  if (key == ' ') save("randomCircles"+imageCount+".png");
}

void mousePressed() {
  imageCount ++;
  redraw();
}

void draw() {
 
  background(0,0,0);
  circle(width/2, height/2);
  
}

void circle(float offsetX, float offsetY) {
  
  float degrees = 360*80;
  float steps = 0.1;
  float rotationOfCanvas = 90;
  float numberOfIteration = degrees / steps;
  
  float radiusOfOuterCircle = random(90,200);
  
  float numberOfSubCirclesX = round(random(2,9));
  float numberOfSubCirclesY = round(random(2,9));
  
  float radiusOfSubCirclesY = random(100,250);
  float radiusOfSubCirclesX = random(100,250);
  
  //radiusOfSubCirclesY = radiusOfSubCirclesX = 5;
  
  float radiusOfOuterCircleScale = 0.0008;
  radiusOfOuterCircleScale = 0;
  
  float radiusOfInnerCircleScale = 0.00015;
  //radiusOfInnerCircleScale = 0;
  
  translate(offsetX, offsetY);
  
  for (float i = 0; i<= degrees; i= i + steps) {
    
    rotate(radians(rotationOfCanvas) / numberOfIteration);
    
    beginShape();
    
    float percent = i/degrees;
    
    stroke(
    whitesmoke,
    map(percent,0,1,255,0));
    
    // outer circle
    radiusOfOuterCircle += radiusOfOuterCircleScale;
    float outerX = (sin(radians(i))*radiusOfOuterCircle);
    float outerY = (cos(radians(i))*radiusOfOuterCircle);
    
    // inner circle
    radiusOfSubCirclesX += radiusOfInnerCircleScale;
    radiusOfSubCirclesY += radiusOfInnerCircleScale;
    float innerX = (sin(radians(i*numberOfSubCirclesX))*radiusOfSubCirclesX);
    float innerY = (cos(radians(i*numberOfSubCirclesY))*radiusOfSubCirclesY);
    
    float newX;
    float newY;
    
    if (numberOfSubCirclesX <= 0 & numberOfSubCirclesY <= 0) {
      newX = outerX;
      newY = outerY;
    } else {
      newX = outerX + innerX;
      newY = outerY + innerY;
    }
    
    if (i > 0) {
      vertex(newX, newY); 
    }
   
    endShape(CLOSE);
    
  }

   

}
