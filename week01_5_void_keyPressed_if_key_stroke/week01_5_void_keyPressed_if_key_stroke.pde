//week01_5_void_keyPressed_if_key_stroke
void setup(){
  size(500,500);//大小
}
void draw(){
  if(mousePressed)line(mouseX,mouseY,pmouseX,pmouseY);
}//如果 mouse按下去,就畫線mouse的xy座標到previous mouse xy

void keyPressed(){
  if(key=='1')strokeWeight(1);
  if(key=='2')strokeWeight(5);
  if(key=='3')strokeWeight(10);
}
