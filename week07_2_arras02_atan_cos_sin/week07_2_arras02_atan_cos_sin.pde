//week07_2_arras02_atan_cos_sin
void setup() {
  size(500, 400);
}
float x=250, y=200;
void draw() {
  background(215, 184, 200);//背景
  float dx  = mouseX-x, dy=mouseY-y;
  float a = atan2(dy, dx);//atan2()算出角度
  strokeWeight(20);//很粗的一條線,長度40
  line(x, y, x+cos(a)*40, y+sin(a)*40);//cos()算出x方向,sin()算出y方向


  fill(167, 167, 175);//砲管方體顏色
  stroke(110, 110, 113);//邊線
  strokeWeight(4);
  rect(240, 160, 20, 20);//位置

  fill(204, 102, 156);//砲塔球體顏色
  stroke(125, 84, 105);//球邊線顏色
  strokeWeight(3);//邊線長度
  ellipse(x, y, 55, 55);//位置

  //line(x, y, mouseX, mouseY);//拉一條會隨著滑鼠移動的線
}
