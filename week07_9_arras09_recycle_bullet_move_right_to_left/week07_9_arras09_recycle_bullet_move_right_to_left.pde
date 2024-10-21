//week07_9_arras09_recycle_bullet_move_right_to_left
//希望能移動很順,因為keyPressed每秒的次數不夠快,要在void draw()裡移動它
void setup() {
  size(500, 400);
}
void keyPressed(){//按下去時,會有速度,放開後,速度要變成0
  if(keyCode==RIGHT) vx=1;//x+=1;
  if(keyCode==LEFT) vx=-1;//x-=1;
  if(keyCode==UP) vy=-1;//y-=1;
  if(keyCode==DOWN) vy=1;//y+=1;
}
void keyReleased(){
  if(keyCode==LEFT||keyCode==RIGHT)vx=0;
  if(keyCode==UP||keyCode==DOWN)vy=0;
}

float x=250, y=200,vx=0,vy=0;
void draw() {
  x+=vx;
  y+=vy;
  background(219);
  translate(-x,-y);//讓全世界,都像反方向移動
  translate(width/2,height/2);//把00移動到畫面正中心
  float mx=mouseX+x-width/2,my=mouseY+y-height/2;
  ellipse(mx,my,8,8);
  stroke(214);//灰底的線
  strokeWeight(1);
  for(int i=0;i<30;i++){
    line(0,i*30,500,i*30);
    line(i*30,0,i*30,500);
  }
  float dx  = mx-x, dy=my-y;
  float a = atan2(dy, dx);//atan2()算出角度
  angle = a;
  line(x,y,mx,my);
  pushMatrix();
  myTank(x,y,a);
  popMatrix();
  for(int i=0;i<bulletN;i++){
    bulletX[i] += bulletVX[i];
    bulletY[i] += bulletVY[i];
    ellipse(bulletX[i],bulletY[i],20,20);
  }
}
float angle;
int bulletN = 0;//一開始有0顆子彈,之後會慢慢增加
float []bulletX=new float[100];
float []bulletY=new float[100];
float []bulletVX=new float[100];
float []bulletVY=new float[100];
void mousePressed(){
  int i= bulletN;
  bulletX[i]=x;
  bulletY[i]=y;
  bulletVX[i]=cos(angle);
  bulletVY[i]=sin(angle);
  bulletN ++;
  if(bulletN==100){
    for(int k=0;k<50;k++){
      bulletX[k]=bulletX[k+50];
      bulletY[k]=bulletY[k+50];
      bulletVX[k]=bulletVX[k+50];
      bulletVY[k]=bulletVY[k+50];
    }
    bulletN=50;
  }
}
void myTank(float x, float y,float a){
  translate(x,y);
  rotate(a);//大二圖學教的移動旋轉
  fill(167, 167, 175);//砲管方體顏色
  stroke(110, 110, 113);//邊線
  strokeWeight(4);
  rect(20, -10, 20, 20);//位置

  fill(204, 102, 156);//砲塔球體顏色
  stroke(125, 84, 105);//球邊線顏色
  strokeWeight(3);//邊線長度
  ellipse(0, 0, 55, 55);//位置

}  
