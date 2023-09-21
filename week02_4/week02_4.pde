PImage img,imgBox;
void setup(){
  size(600,600);
  img= loadImage("princess3.png");
  imgBox= loadImage("Box2.png");
}
void draw(){
  imageMode(CENTER);
  if(mousePressed){
    image(imgBox,mouseX,mouseY);
  }else{
    image(img,300,300,200,200);
  }
}
