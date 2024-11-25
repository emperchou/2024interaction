//week12_1_libraries_sound_SoundFile_sound_isPlaying
//官網-Documentation-libraries函式庫-sound的部分
//https://processing.org/reference/libraries/sound/index.html
//我們教過的play()stop()pause(),今天要式isPlaying()是不是在撥放
import processing.sound.*;
SoundFile sound1,sound2;
int playing = 1;
void setup(){
  size(640,360);
  background(255);
  sound1 = new SoundFile(this,"Intro Song_Final.mp3");
  sound2 = new SoundFile(this,"In Game Music.mp3");
}
void draw(){
  if(sound1.isPlaying()){//音樂1有沒有在撥放
    playing=1;
  }else if(sound2.isPlaying()){//音樂2有沒有在撥放
    playing=2;
  }else{//沒有任何音樂在撥放
    if(playing==1)sound2.play();//換另外一首
    else sound1.play();
  }
}
