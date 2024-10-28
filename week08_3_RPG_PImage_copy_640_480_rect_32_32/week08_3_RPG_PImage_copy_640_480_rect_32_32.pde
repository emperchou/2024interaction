//week08_3_RPG_PImage_copy_640_480_rect_32_32
PImage img ;
void setup(){
  size(640,480);//15格=480,480/15=32 小圖
  img = loadImage("640x480.png");
  
}
void draw(){
  background(img);
  for(int i=0;i<15;i++){//高度對應480對應y座標 左手j
    for(int j=0;j<20;j++){//寬度對應640對應x座標 右手j
      noFill();
      stroke(0);
      rect(j*32,i*32,32,32);//小格子大小事32*32
    }
  }
  stroke(255,0,0);
  rect(J*32,I*32,32,32);
}
int I = -1,J = -1;
void mouseMoved(){//void Move()移動時要修改I,J
  I = mouseY/32;//小心Y
  J = mouseX/32;//小心X
}
int N=1;//圖檔的編號
void mousePressed(){
  //PImage now;
  //now.copy(img,0,0,640,480,0,0,640,480);
  PImage now = createImage(32,32,RGB);
  now.copy(img,J*32,I*32,32,32,0,0,32,32);
  now.save(N+".png");
  N++;
}
