//week03_3_arufa_rect_rect_rect
PImage img; 
void setup(){
  size(600,400);
  img = loadImage("aufa.jpg");
}
void draw(){
  image(img,0,0);
  noStroke();//不要有邊線
  noCursor();//不要有滑鼠游標
  fill(200,200,255,128);
  
  rect(mouseX,mouseY-80,70,60);//1
  
  rect(mouseX-30,mouseY-40,70,60);//2
  rect(mouseX+30,mouseY-40,70,60);
  
  rect(mouseX,mouseY,70,60);//3
  rect(mouseX-60,mouseY,70,60);
  rect(mouseX+60,mouseY,70,60);
  
  rect(mouseX-30,mouseY+40,70,60);//4
  rect(mouseX-90,mouseY+40,70,60);
  rect(mouseX+30,mouseY+40,70,60);
  rect(mouseX+90,mouseY+40,70,60);
  
  rect(mouseX,mouseY+80,70,60);//3
  rect(mouseX-60,mouseY+80,70,60);
  rect(mouseX+60,mouseY+80,70,60);
  
  rect(mouseX-30,mouseY+120,70,60);//2
  rect(mouseX+30,mouseY+120,70,60);
  
  rect(mouseX,mouseY+160,70,60);//1
}
