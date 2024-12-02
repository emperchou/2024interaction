//week13_11_tetris_falling_alive_9_freeze_dead_T
color [] c = {#000000, #777777, #9900CC, #CCCC00, #00B500, #CC0000,#0000CC,#CC9900,#0000CC,#FFFFFF};//將會有10個色彩
int T=2;
void setup() {
  size(240, 440);
}
void draw() {
  for (int i=0; i<22; i++) {
    for (int j=0; j<12; j++) {
      int now = grid[i][j];
      fill(c[now]);
      rect(j*20, i*20, 20, 20);
    }
  }
  if (frameCount%50==0) {
    int bad=0;
    for (int i =20; i>1; i--) {//從上到下的迴圈
      for (int j=1; j<12-1; j++) {//最左右不動,中間才動
        if (grid[i][j]==9) {//如果是可以移動的主角、活著是9
          if (grid[i+1][j]!=0&&grid[i+1][j]!=9) bad=1;
        }
      }
    }
    if(bad==0){
      for(int i=20;i>=1;i--){
        for(int j=1;j<12-1;j++){
          if(grid[i][j]==9){
            grid[i+1][j]=9;
            grid[i][j]=0;
          }
        }
      }
    }else{
      for(int i=20;i>=1;i--){
        for(int j=1;j<12-1;j++){
          if(grid[i][j]==9){
            grid[i][j]=T;
          }
        }
      }
    }
  }
}
  int [][]grid = {
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    {1, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 1},
    {1, 0, 0, 0, 0, 9, 9, 0, 0, 0, 0, 1},
    {1, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 1},
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
    {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},

  };
