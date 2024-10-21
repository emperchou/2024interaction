//week07_1_arras01_background_fill_stroke_ellipse_rect_line
void setup(){
  size(500,400);
}
float x=250,y=200;
void draw(){
  background(215,184,200);//背景
  fill(167,167,175);//砲管方體顏色
  stroke(110,110,113);//邊線
  strokeWeight(4);
  rect(240,160,20,20);//位置
  
  fill(204,102,156);//砲塔球體顏色
  stroke(125,84,105);//球邊線顏色
  strokeWeight(3);//邊線長度
  ellipse(x,y,55,55);//位置
  
 line(x,y,mouseX,mouseY);//拉一條會隨著滑鼠移動的線 
}
