//week03_9_arufa_array_for
int []boardX={0,-30,+30,+60,0,-60,-90,-30,+30,+90,+60,0,-60,-30,+30,0};
int []boardY={-80,-40,-40,0,0,0,+40,+40,+40,+40,80,80,80,120,120,160};
PImage img;
void setup() {
  size(600, 400);
  img = loadImage("aufa.jpg");
}
void draw() {
  image(img, 0, 0);
  noStroke();//不要有邊線
  noCursor();//不要有滑鼠游標
  fill(200, 200, 255, 128);

  for (int i=0; i<16; i++) {
    rect(mouseX+boardX[i], mouseY+boardY[i], 70, 50);
  }
}
