//week05_02_cwa_typhoon_array_loadStrings
//老師準備了list.txt裡面有299行
int N=299;
PImage []imgs=new PImage[299];
void setup(){
  size(800,800);
  String [] filenames = loadStrings("list.txt");//把list.txt的299行,放入filenames裡
  for(int i =0;i<N;i++){//把每一張圖片,都讀近來
    imgs[i] = loadImage(filenames[i]);
  }
}
void draw(){
  int i = frameCount%N;
  background(imgs[i]);
}
