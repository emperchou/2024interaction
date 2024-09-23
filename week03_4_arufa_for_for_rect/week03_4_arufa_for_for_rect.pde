//week03_4_arufa_for_for_rect
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
  
  for(int i=1;i<=4;i++){
    for(int j=0;j<i;j++){
      float y = i*40,x=-i/2*60+j*60 + ((i%2==0)?30:0);
      rect(mouseX+x,mouseY-80+y,70,60);
    }
  }
  
  for(int i=3;i>=1;i--){
    for(int j=0;j<i;j++){
      float y = (4-i)*40+160,x=-i/2*60+j*60 + ((i%2==0)?30:0);
      rect(mouseX+x,mouseY-80+y,70,60);
    }
  }
  
}
