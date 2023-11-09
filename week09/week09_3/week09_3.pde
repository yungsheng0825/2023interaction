PImage img;
int [][]  pos={{94,488},{247,524},{179,524},{160,490},{151,456},{194,489},{231,491},{264,489},{323,456},{300,489},{330,490},{367,491},{315,523},{280,526},{357,454},{389,457},{83,456},{188,457},{129,490},{220,456},{287,457},{211,524},{118,457},{145,525},{252,456},{109,524}};
 void setup(){
  size(800,600);
  img=loadImage("keyboard.png");
  rectMode(CENTER);
}
void  draw(){
  background(#FFFFF2);
  image(img,0,600-266);
  fill(255,0,0,128);
  rect(mouseX,mouseY,28,30,5);
  fill(0,225,0,128);
  for(int i=0;i<26;i++){
    rect(pos[i][0],pos[i][1],28,30,5);
  }
}
void mousePressed(){
  println(mouseX,mouseY);
}
