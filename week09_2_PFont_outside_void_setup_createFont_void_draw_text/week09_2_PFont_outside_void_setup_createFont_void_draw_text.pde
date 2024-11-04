//week09_2_PFont_outside_void_setup_createFont_void_draw_text
PFont font0,font,font2;
void setup(){  
  size(500,500);//大視窗
  font0 = createFont("Ariel",50);
  font = createFont("標楷體",50);
  font2 = createFont("elffont-rock.otf",50);
}
void draw(){
  background(0);//黑色背景
  textSize(50);
  textFont(font0);
  text("Hello",50,50);

  textFont(font);
  text("中文看到了",50,150);

  
  textFont(font2);//記得先把字型安裝下來
  text("ㄇㄉㄈㄎ",50,250);
}
