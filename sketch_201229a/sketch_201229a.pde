void setup() {
  size(1080, 1080);
  background(237, 242, 244);
  smooth();

  noFill();
  stroke(141, 153, 174);
  beginShape();
  vertex(80, 80);
  bezierVertex(150, 80, 75, 140, 120, 300);
  bezierVertex(140, 80, 75, 140, 120, 800);
  bezierVertex(130, 80, 75, 140, 180, 800);
  bezierVertex(120, 80, 75, 140, 300, 800);
  bezierVertex(110, 80, 100, 140, 600, 800);
  bezierVertex(100, 100, 75, 140, 900, 800);
  bezierVertex(90, 80, 75, 340, 900, 800);
  bezierVertex(80, 50, 75, 340, 300, 100);
  endShape();
  beginShape();
  vertex(500, 500);
  bezierVertex(499, 799, 749, 639, 919, 899);
  bezierVertex(499, 799, 750, 639, 909, 899);
  bezierVertex(499, 799, 750, 619, 919, 899);
  endShape();
  stroke(239, 35, 60);
  ellipse(1000, 1000, 1000, 1000);
  beginShape();
  vertex(500, 500);
  bezierVertex(500, 800, 750, 640, 920, 900);
  bezierVertex(500, 800, 750, 640, 910, 900);
  bezierVertex(500, 800, 750, 620, 920, 900);
  endShape();
  stroke(217, 4, 41);
  beginShape();
  vertex(500, 500);
  bezierVertex(1000, 1000, 750, 140, 120, 100);
  bezierVertex(1000, 1000, 750, 140, 110, 100);
  bezierVertex(1000, 1000, 750, 120, 60, 30);
  endShape();
  stroke(43, 45, 66);
  beginShape();
  vertex(1000, 1000);
  bezierVertex(2, 1000, 750, 140, 120, 100);
  bezierVertex(2, 1000, 750, 140, 110, 100);
  bezierVertex(2, 1000, 750, 120, 60, 30);
  endShape();
  
}
