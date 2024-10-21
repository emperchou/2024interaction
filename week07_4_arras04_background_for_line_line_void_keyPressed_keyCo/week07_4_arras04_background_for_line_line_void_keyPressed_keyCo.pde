//week07_4_arras04_background_for_line_line_void_keyPressed_keyCode
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
  stroke(214);
  strokeWeight(1);
  for(int i=0;i<30;i++){
    line(0,i*30,500,i*30);
    line(i*30,0,i*30,500);
  }
  float dx  = mouseX-x, dy=mouseY-y;
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
