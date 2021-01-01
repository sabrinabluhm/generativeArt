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
  noFill();
  noLoop();
  
}

void keyPressed() {
  if (key == ' ') save("screenshot.png");
}

void createTiles(int countOfItems, float x,  float y, int widthOfRect, int heightOfRect, String letter, color linecolor) {  

  
   PGraphics rectsImage = createGraphics(widthOfRect + 200, heightOfRect + 200);
   randomRectsInRectangle(rectsImage, countOfItems, widthOfRect, heightOfRect, 100, linecolor);  
   image(rectsImage, x-100, y-100);
  
   /*PGraphics linesImage = createGraphics(widthOfRect, heightOfRect);
   randomLinesInRectangle(linesImage, countOfItems, widthOfRect, heightOfRect, linecolor);
   
   
   if(letter != "") {
     PGraphics letterImage = createGraphics(widthOfRect, heightOfRect);
     letterRectangle(letterImage, widthOfRect, heightOfRect, letter);
     linesImage.mask(letterImage);
   }
   
   image(linesImage, x, y);*/
}

void letterRectangle (PGraphics graphic, int widthOfRect, int heightOfRect, String letter) {
  
  graphic.beginDraw();
  graphic.background(0);
  graphic.textAlign(CENTER, CENTER);
  PFont f = createFont("Futura",180,true);    
  graphic.textFont(f);                  
  graphic.fill(255);                       
  graphic.text(letter,widthOfRect/2,heightOfRect/2 - 25);                  
  graphic.endDraw();
}

void randomLinesInRectangle(PGraphics graphic, int countOfLines, int widthOfRect, int heightOfRect, color linecolor) {  
  
   graphic.beginDraw();
   graphic.background(whitesmoke);
   graphic.stroke(linecolor);
   
   for (int i = 0; i <= countOfLines; i ++) {
     graphic.line(random(0, widthOfRect),random(0, heightOfRect),random(0, widthOfRect),random(0, heightOfRect));
     
   }
  
  graphic.endDraw();
  
}

void randomRectsInRectangle(PGraphics graphic, int countOfRects, int widthOfRect, int heightOfRect, int offset,  color linecolor) {
    
  float maxDiff = 13;
  float maxOffsetRect = 8;
  
   graphic.beginDraw();
   graphic.background(whitesmoke, 0);
   graphic.stroke(linecolor, 140);
   graphic.noFill();
   
   for (int i = 0; i <= countOfRects; i ++) {
      
     float offsetRectX = random(-maxOffsetRect, maxOffsetRect);
     float offsetRectY = random(-maxOffsetRect, maxOffsetRect);
     
     float x1 = random(-maxDiff, maxDiff) + offset + offsetRectX;
     float y1 = random(-maxDiff, maxDiff) + offset + offsetRectY;
     
     float x2 = random(-maxDiff, maxDiff) + offset + offsetRectX;
     float y2 = random(heightOfRect-maxDiff, heightOfRect+maxDiff) + offset + offsetRectY;
     
     float x3 = random(widthOfRect-maxDiff, widthOfRect+maxDiff) + offset + offsetRectX;
     float y3 = random(heightOfRect-maxDiff, heightOfRect+maxDiff) + offset + offsetRectY;
     
     float x4 = random(widthOfRect-maxDiff, widthOfRect+maxDiff) + offset + offsetRectX;
     float y4 = random(-maxDiff,maxDiff) + offset + offsetRectY;
     
     graphic.line(x1, y1, x2, y2);
     graphic.line(x2, y2, x3, y3);
     graphic.line(x3, y3, x4, y4);
     graphic.line(x4, y4, x1, y1);
     
   }
  
  graphic.endDraw();
  
}
  

void draw() {  
   
   background(black);
   
   float padding_main = 150;
   float padding_items =20;
   
   float minItems = 0;
   float maxItems = 40;
   
   int numberOfTilesX = 7;
   int numberOfTilesY = 10;
   
   color[] possibleColors = {whitesmoke}; 
   
   int tileWidth = round((width - ((numberOfTilesX - 1) * padding_items) - (2 * padding_main))/numberOfTilesX);
   int tileHeight = round((height - ((numberOfTilesY - 1) * padding_items) - (2 * padding_main))/numberOfTilesY);
   
   String[] letters = "".toUpperCase().split("");
   
   for (int row = 1; row <= numberOfTilesY; row++) {
     for (int col = 1; col <= numberOfTilesX; col++) {
       
       int countOfTile = (row -1) * numberOfTilesX + col;
       
       float x = padding_main + padding_items * (col-1) + tileWidth * (col -1);
       float y = padding_main + padding_items * (row-1) + tileHeight * (row -1);
       
       color randomcolor = possibleColors[round(random(0, possibleColors.length-1))];
       
       //int numberofItems = 400;
       int numberOfItems = round(map2(float(col), 1, float(numberOfTilesX), minItems, maxItems, SINUSOIDAL, EASE_IN));
       
       if (col == 7 ) {
         numberOfItems = round(map2(float(4), 1, float(numberOfTilesX), minItems, maxItems, SINUSOIDAL, EASE_IN));
       }
       
       if (col == 8 ) {
         numberOfItems = round(map2(float(2), 1, float(numberOfTilesX), minItems, maxItems, SINUSOIDAL, EASE_IN));
       }
       
       if (col == 9 ) {
         numberOfItems = round(map2(float(1), 1, float(numberOfTilesX), minItems, maxItems, SINUSOIDAL, EASE_IN));
       }
       
       createTiles(numberOfItems, x, y, tileWidth, tileHeight, letters[(countOfTile - 1) % letters.length] , randomcolor);

       
     }
   }
  
}



  
