//week06_1_schulte_table01_line_fill_textSize_text_for
void setup(){
  size(500,500);
}
void draw(){
  background(#FFFFF2);
  line(0,100,500,100);
  line(0,200,500,200);
  line(0,300,500,300);
  line(0,400,500,400);
  
  line(100,0,100,500);
  line(200,0,200,500);
  line(300,0,300,500);
  line(400,0,400,500);
  fill(0);//黑色的字
  textSize(50);
  textAlign(CENTER,CENTER);
  for(int y=50;y<=450;y+=100){
    text("1",50,50);
    text("1",150,50);
    text("1",250,50);
    text("1",350,50);
    text("1",450,50);
  }
}
