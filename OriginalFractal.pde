public void setup(){
 size(500, 500);
 rectMode(CENTER);
 fill((int)(Math.random()*50)+200, (int)(Math.random()*50)+200, (int)(Math.random()*50)+200, (int)(Math.random()*50)+200);
}
public void draw(){
  background(0);
  myFractal(250, 250, 480);
}
public void myFractal(int x, int y, int siz){
  rect(x, y, siz, siz);
  if (siz > 10){
  myFractal(x-siz/2, y-siz/2, siz/2);
  myFractal(x-siz/2, y+siz/2, siz/2);
  myFractal(x+siz/2, y-siz/2, siz/2);
  myFractal(x+siz/2, y+siz/2, siz/2);
  }
}
