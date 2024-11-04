//week09_5_keyboard_ninja01_background_image_appleX_appleY_appleVX_appleVY_g
PImage board;
void setup(){
  size(600,400);
  board = loadImage("board.png");//
}
float appleX = 100,appleY = 500, appleVX = 3, appleVY = -3;
void draw(){
  background(board);//裡面使用變數
  fill(255,0,0);
  ellipse(appleX,appleY,80,80);//紅色的蘋果
  appleX += appleVX;//照著運動的速度,x往右移
  appleY += appleVY;//照著運動的速度,Y也會移動
  appleVY += 0.98;//0.98 gravity 重力加速度()
  if(appleX > 600){
    appleX = 100;
    appleY = 500; 
    appleVX = 5; 
    appleVY = -30;
  }
}
