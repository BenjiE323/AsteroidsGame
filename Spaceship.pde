class Spaceship extends Floater  
{   
public Spaceship() { 
corners = 24;
xCorners = new int[]{36, 6, 4, 12, 4, 0, -4, -10, -12, -10, -6, -7, -6, -10, -12, -10, -4, 0, 4, 12, 4, 6, 36, 36};
yCorners = new int[]{1, 6, 14, 16, 18, 18, 6, 6, 4, 2, 1, 0, -1, -2, -4, -6, -6, -18, -18, -16, -14, -6, -1, 1};
myColor = 200;
myCenterX = 0;
myCenterY = 0; 
myXspeed = 1; 
myYspeed = 1;
myPointDirection = 180;
   }
public void setDirection(double c) {
  myPointDirection = c;
}
public void setXspeed(double x) {
  myXspeed = x;
}
public void setYspeed(double y) {
  myYspeed = y;
}
public void setXposition(double a) {
  myCenterX = a;
}
public void setYposition(double b) {
  myCenterY = b;
}
public void keyPressed() {
  if ( key == 'h' ) {
    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.setXposition((int)(Math.random()*800 + 100));
    bob.setYposition((int)(Math.random()*800 + 100));
  }
  
}
}
