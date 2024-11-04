//week09_1_createFont_loadFont_textFont
size(500,500);//大視窗
background(0);//黑色背景
textSize(50);
text("Hello",50,50);
PFont font = createFont("標楷體",50);
textFont(font);
text("中文看不到",50,150);

PFont font2 = createFont("elffont-rock.otf",50);
textFont(font2);//記得先把字型安裝下來
text("ㄇㄉㄈㄎ",50,250);
