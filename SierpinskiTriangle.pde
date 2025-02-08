
public void setup() {
 
  size(800, 800);
  background(0, 255, 171);
  
}

public void draw(){

  
  sierpinski(0, 800, 800);

}


public void sierpinski(int x, int y, int len) {

  if (len <= 30) {

    fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));

    
    triangle(x, y, x + len, y, x + len/2, y - len); //left right middle
    ellipse(x + len/2, y - len/2, 12, 7);
    
    fill(0);
    ellipse(x + len/2, y - len/2, 6, 3);
    
    
  } else {
  
     
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
    
    //sierpinski(x + len/8, y - len/4, len/2);
  
  }
}




