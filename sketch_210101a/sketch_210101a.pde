  color whitesmoke = color(245,245,245);
  color black = color(0,0,0);
  color dimgray = color(105,105,105);
  color gray = color(128,128,128);
  color gainsboro = color(220,220,220);
  color midgnitblue = color(25,25,112);
  color darkslategray = color(47,79,79);
  color darkred = color(139,0,0);

void setup() {
  
  size(1080, 1080); 
  pixelDensity(2);
  background(whitesmoke);
  noFill();
  noLoop();
  
}

void keyPressed() {
  if (key == ' ') save("screenshot.png");
}


void randomLinesInRectangle(int count, float x1,  float y1, float x2, float y2, color linecolor) {  
  
   stroke(linecolor, 20);
   for (int i = 0; i <= count; i ++) {
     line(random(x1, x2),random(y1, y2),random(x1, x2),random(y1, y2));
     
   }
  
}

 void draw() {  
   
   background(whitesmoke);
   
   float padding = 10;
   
   int numberOfTilesX = 10;
   int numberOfTilesY = 10;
   
   float tileWidth = (width - ((numberOfTilesX + 1) * padding))/numberOfTilesX;
   float tileHeight = (height - ((numberOfTilesY + 1) * padding))/numberOfTilesY;
   
   
   for (int row = 1; row <= numberOfTilesY; row++) {
     for (int col = 1; col <= numberOfTilesX; col++) {
       float x1 = padding * col + tileWidth * (col -1);
       float y1 = padding * row + tileHeight * (row -1);
       float x2 = x1 + tileWidth;
       float y2 = y1 + tileHeight;
       
       color[] possibleColors = {gray, gray, black}; 
       color randomcolor = possibleColors[round(random(0, possibleColors.length-1))];
       
       
       
      // The first is the easing type and is one of LINEAR, SINUSOIDAL, QUADRATIC, CUBIC, QUARTIC, QUINTIC, EXPONENTIAL, CIRCULAR, and SQRT.

//The second is a parameter specifying where to apply the easing, and is one of EASE_IN, EASE_OUT, and EASE_IN_OUT.

       int type = 0;
       int when = 0;
       
       if (row == 1) {
         type = LINEAR;
         when = EASE_IN;
       } else if (row == 2) {
                  type = LINEAR;
         when = EASE_IN;
       } else if (row == 3) {
                  type = SINUSOIDAL;
         when = EASE_IN;
       } else if (row == 4) {
                  type = QUADRATIC;
         when = EASE_IN;
       } else if (row == 5) {
                  type = CUBIC;
         when = EASE_IN;
       } else if (row == 6) {
                  type = CUBIC;
         when = EASE_IN;
       } else if (row == 7) {
                  type = QUARTIC;
         when = EASE_IN_OUT;
       }
       
       int numberOfLines = round(map2(float(col), 1, float(numberOfTilesX), 5, 500, type, when));
       
       randomLinesInRectangle(numberOfLines, x1, y1, x2, y2, randomcolor); 
       
     }
   }
   //randomLinesInRectangle(200, padding, padding, padding + tileWidth, padding + tileHeight, gainsboro);
   //randomLinesInRectangle(300, padding, 2*padding + tileHeight, padding + tileWidth, 2 * tileHeight + 2 * padding, darkslategray);
   //randomLinesInRectangle(400, padding + (tileWidth + padding), padding, padding + tileWidth + (tileWidth + padding), padding + tileHeight, midgnitblue);
   //randomLinesInRectangle(500, padding + (tileWidth + padding), 2*padding + tileHeight, padding + tileWidth + (tileWidth + padding), 2 * tileHeight + 2 * padding, darkred);
   
}


  
