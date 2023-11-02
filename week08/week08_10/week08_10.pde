void setup(){
  size(400,400);
}
float marioX=50,marioY=250,vx=0,vy=0;
void draw(){
  background(108,137,255);
  marioX+=vx;
  if(flying){
    marioY+=vy;
    vy+=0.98;
    if(marioY>=250){
      marioY=250;
      flying=false;
    }
 }
  fill(255,0,0);    ellipse(marioX,marioY,15,20);
  fill(229,119,42); rect(0,260,400,150);
  drawAndTestBox(100,150,20,20);
  drawAndTestBox(200,150,20,20);
  drawAndTestBox(300,150,20,20);
}
void drawAndTestBox(int x,int y,int w,int h){
   fill(229,119,42); rect(x,y,w,h);
  if(hitbox(x,y,w,h)){
     if(vy>0){
       marioY=y-10;
       flying=false;
       stand_box=true;
     }else{
       vy=0;
       marioY=y+h+10;
     }
  }
  if(stand_box==true  &&  flying==false  &&  leavebox(x,y,w,h)){
    stand_box=false;
    flying=true;
    vy=0;
  }
}
boolean leavebox(int x,int y,int w,int h){
   if(x-7>marioX || marioX>x+w+7 )  return true;
   else return false;
}
boolean  hitbox(int x,int y,int w,int h){
  if(x-7<marioX &&  marioX<x+w+7  &&  y-10<marioY  &&  marioY<y+h+10)  return true;
   else return false;
}
boolean  flying=false,stand_box=false;
void keyPressed(){
  if(keyCode==RIGHT)  vx=2;
  if(keyCode==LEFT)  vx=-2;
  if(keyCode==UP&&flying==false){
    vy=-20;
    flying=true;
    stand_box=false;
  }
}
void  keyReleased(){
   if(keyCode==RIGHT||keyCode==LEFT) vx=0;
}
