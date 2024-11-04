//week09_3_import_processing_sound 聲音相關 使用音樂相關的library函式庫
//Sketch-Library-Manger Libraries 找sound 可找到sound 函式庫(Processing基金會做的),安裝!
import processing.sound.*;
SoundFile sound;

void setup(){
  size(500,500);
  sound = new SoundFile(this,"In Game Music.mp3");
  sound.play();
}
void draw(){
  
}
