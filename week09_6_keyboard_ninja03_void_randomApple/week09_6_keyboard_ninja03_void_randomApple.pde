//week09_6_keyboard_ninja03_void_randomApple
PImage board;//外面宣告變數
void setup(){
  size(600,400);
  board = loadImage("board.png");//裡面修改變數
}
float appleX = 100,appleY = 500, appleVX = 5, appleVY = -30;
void randomApple(){
  appleX = random(100,500);
  appleY = 500;
  appleVX = random(-8,8);
  appleVY = random(-30,20);
}
void draw(){
  background(board);//裡面使用變數
  fill(255,0,0);
  ellipse(appleX,appleY,80,80);//紅色的蘋果
  appleX += appleVX;//照著運動的速度,x往右移
  appleY += appleVY;//照著運動的速度,Y也會移動
  appleVY += 0.98;//0.98 gravity 重力加速度(運動的速度,會受到加速度影響)
  if(appleX > 600 || appleX<0 || appleY>550){
    randomApple();//當蘋果出借時,重設新的蘋果位置、速度
  }
}
