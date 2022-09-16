void setup() {
  size(600, 600);  //feel free to change the size
   
}
void draw() {
  boolean shift = true;
  for(int y = 700; y >= -100; y -= 40) { 
    for(int x = -100; x <= 600; x += 100) {
      if(shift == true)
        scale(x + 50,y);
      else
       scale(x,y);
    }
    if (shift == true)
      shift = false;
    else
      shift = true;
  }
}
  
void scale(int x, int y) {
  noStroke();
  fill((int)(Math.random()*100),0,(int)(Math.random()*100));
  beginShape();
  curveVertex(x,y);//first
  curveVertex(x,y);//first
  curveVertex(x+21,y+24);
  curveVertex(x +13.5,y+51);//left outer point
  curveVertex(x+37.5,y+60);
  curveVertex(x+60,y+84);//middle outer point
  curveVertex(x+81.5,y+60);
  curveVertex(x+105.5,y+51);//right outer point
  curveVertex(x+99,y+24);
  curveVertex(x+120,y);//last
  curveVertex(x+120,y);//last
  endShape();
}
