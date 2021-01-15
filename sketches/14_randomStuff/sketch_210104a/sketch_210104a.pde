  color whitesmoke = color(245,245,245);
  color black = color(0,0,0);
  color dimgray = color(105,105,105);
  color gray = color(128,128,128);
  color gainsboro = color(220,220,220);
  color midgnitblue = color(25,25,112);
  color darkslategray = color(47,79,79);
  color darkred = color(139,0,0);
  
  int r = 0;
  int x = 0;
  int circles = 300;
  
void setup(){
   size(1080,1080);
}

void draw(){
   ellipseMode(CENTER);
   background(black);
   stroke(whitesmoke);
   strokeWeight(2);
   noFill();
   noLoop();
   
   while (r  < width){
    ellipse(width/2, height/2, r, r);   // while loop
    r = r + 10;
    }

}
   







   
   
