//week07_5_arras05_correct_move_translate_translate_mx_my
void setup() {
  size(500, 400);
}
void keyPressed(){
  if(keyCode==RIGHT) x+=1;
  if(keyCode==LEFT) x-=1;
  if(keyCode==UP) y-=1;
  if(keyCode==DOWN) y+=1;
}
float x=250, y=200;
void draw() {
  //background(215, 184, 200);//背景
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
  line(x,y,mouseX,mouseY);
  myTank(x,y,a);
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
