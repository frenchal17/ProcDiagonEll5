void setup(){
  size(500,500);
  background(0,0,0);
}

//New project; ellipse making a bigger ellipse path, but tilted diagonally.

float x = 0;
float x2 = 0;
float x3 = 0;
float y = 0;
float c = .01;
float c2 = (.01 * 200);
float c3 = (.01 * 4);
//Mess with multipliers for c2 and c3; c3 changes sides of shape, and
//c2 changes speed of rotation
float ex = 0;
float ey = 0;
float ex2 = 0;
float ey2 = 0;
float ex3 = 0;
float ey3 = 0;


void draw(){
 // background(255,255,255);
  x = x + c;
  x2 = x2 + c2;
  x3 = x3 + c3;
  y = y + c;
  ex = (width/2) + 200 * sin(x);
  ey = (height/2) + 200 * cos(y);
  ex2 = (width/2) + 150 * sin(x);
  ey2 = (height/2) + 150 * cos(y);
  ex3 = ex - 30 * sin(x3);
  ey3 = ey + 30 * cos(x3);
  fill(0,255 * sin(x), 255 * cos(x));
  stroke(50,255 * sin(x), 255 * cos(x));
  ellipse(ex, ey, 5, 5);
  ellipse(ex - 30 * sin(x3), ey + 30 * cos(x3), 5, 5);
  ellipse(ex3 + 30 * sin(x2), ey3 - 30 * cos(x2), 5, 5);
  ellipse(ex2 - 30 * sin(x2), ey2 - 30 * cos(x2), 5, 5);
  //Mess with the signs of the second ellipse
  //Mess with the c2 Multiplier
  //Change radius?
}

void keyPressed(){
  if (key == 's'){
    saveFrame("####.png");
  }
}
