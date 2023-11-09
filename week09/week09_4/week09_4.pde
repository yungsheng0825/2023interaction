PImage img;
int [][] pos = {{94,488},{247,524},{179,524},{160,490},{151,456},{194,489},{231,491},{264,489},{323,456},{300,489},{330,490},{367,491},{315,523},{280,526},{357,454},{389,457},{83,456},{188,457},{129,490},{220,456},{287,457},{211,524},{118,457},{145,525},{252,456},{109,524}};
void setup(){
  size(800, 600);
  img = loadImage("keyboard.png");
  rectMode(CENTER); //用中心點,來畫四邊形
}
void draw(){
  background(#FFFFF2); //淡黃色,清背景
  image(img, 0, 600-266);
  fill(255,0,0, 128); //半透明的紅色
  rect(mouseX, mouseY, 28, 30, 5);
  fill(0,255,0, 128);
  for(int i=0; i<26; i++){
    if(pressed[i]) rect(pos[i][0], pos[i][1], 28, 30, 5);
  }
}
boolean [] pressed = new boolean[26];
void keyPressed(){
  if(key>='a'&&key<='z') pressed[key-'a'] = true;
}
void keyReleased(){
  if(key>='a'&&key<='z') pressed[key-'a'] = false;
}
void mousePressed(){
  print(mouseX, mouseY); //定位、印出mouse座標
}
