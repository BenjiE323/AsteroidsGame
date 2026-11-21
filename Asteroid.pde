class Asteroid extends Floater {
  protected double rotSpeed;
  public Asteroid() {
    corners = 41;
    xCorners = new int[] {19, 19, 15, 15, 15, 12, 4, 3, -3, -15, -16, -18, -23, -23, -22, -22, -25, -25, -23, -22, -21, -17, -15, -13, -12, -11, -8, -7, -2, 1, 3, 14, 13, 14, 18, 18, 20, 19, 18, 19, 19};
    yCorners = new int[] {0, 4, 7, 9, 10, 14, 15, 17, 18, 18, 14, 12, 10, 8, 5, 3, -2, -5, -6, -13, -14, -14, -15, -17, -20, -21, -23, -25, -25, -28, -29, -23, -20, -17, -15, -12, -10, -5, -3, -2, 0};
    myColor = 100;
    myXspeed = (int)(Math.random()*4 + 1);
    myYspeed = (int)(Math.random()*4 + 1);
    myPointDirection = (int)(Math.random()*359);
    myCenterX = (int)(Math.random()*800 + 100);
    myCenterY = (int)(Math.random()*800 + 100);;
    rotSpeed = (Math.random()* 10 -5);
  }
  
  public void move() {
    turn(rotSpeed);
    super.move();
  }
  
  public void setY(int y) {
    myCenterY = y;
  }
  
  public void setDirection(double d) {
    myPointDirection = d;
  }
  
  public double getXposition() { return myCenterX; }
public double getYposition() { return myCenterY; }

}

class AsteroidGold extends Floater {
  protected double rotSpeed;
  public AsteroidGold() {
    corners = 41;
    xCorners = new int[] {19, 19, 15, 15, 15, 12, 4, 3, -3, -15, -16, -18, -23, -23, -22, -22, -25, -25, -23, -22, -21, -17, -15, -13, -12, -11, -8, -7, -2, 1, 3, 14, 13, 14, 18, 18, 20, 19, 18, 19, 19};
    yCorners = new int[] {0, 4, 7, 9, 10, 14, 15, 17, 18, 18, 14, 12, 10, 8, 5, 3, -2, -5, -6, -13, -14, -14, -15, -17, -20, -21, -23, -25, -25, -28, -29, -23, -20, -17, -15, -12, -10, -5, -3, -2, 0};
    myColor = 100;
    myXspeed = (int)(Math.random()*4 + 1);
    myYspeed = (int)(Math.random()*4 + 1);
    myPointDirection = (int)(Math.random()*359);
    myCenterX = (int)(Math.random()*800 + 100);
    myCenterY = (int)(Math.random()*800 + 100);;
    rotSpeed = (Math.random()* 10 -5);
  }
   public void show ()  //Draws the floater at the current position  
  {             
    fill(255, 215, 0);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
  
  // over riding the show function of floater to get a golden asteroid
  
  public void move() {
    turn(rotSpeed);
    super.move();
  }
  
  public void setY(int y) {
    myCenterY = y;
  }
  
  public void setDirection(double d) {
    myPointDirection = d;
  }
  
  public double getXposition() { return myCenterX; }
public double getYposition() { return myCenterY; }

}



class AsteroidA extends Floater {
  protected double rotSpeed;
  public AsteroidA() {
    corners = 41;
    xCorners = new int[] {19, 19, 15, 15, 15, 12, 4, 3, -3, -15, -16, -18, -23, -23, -22, -22, -25, -25, -23, -22, -21, -17, -15, -13, -12, -11, -8, -7, -2, 1, 3, 14, 13, 14, 18, 18, 20, 19, 18, 19, 19};
    yCorners = new int[] {0, 4, 7, 9, 10, 14, 15, 17, 18, 18, 14, 12, 10, 8, 5, 3, -2, -5, -6, -13, -14, -14, -15, -17, -20, -21, -23, -25, -25, -28, -29, -23, -20, -17, -15, -12, -10, -5, -3, -2, 0};
    myColor = 100;
    myXspeed = (int)(Math.random()*-4 -1);
    myYspeed = (int)(Math.random()*-4 -1);
    myPointDirection = (int)(Math.random()*359);
    myCenterX = (int)(Math.random()*800 + 100);
    myCenterY = (int)(Math.random()*800 + 100);;
    rotSpeed = (Math.random()* 10 -5);
  }
  
  public void move() {
    turn(rotSpeed);
    super.move();
  }
  
  public void setY(int y) {
    myCenterY = y;
  }
  
  public void setDirection(double d) {
    myPointDirection = d;
  }
  
  public double getXposition() { return myCenterX; }
public double getYposition() { return myCenterY; }

}





class Asteroid3 extends Floater {
  protected double rotSpeed;
  public Asteroid3() {
    corners = 17;
    xCorners = new int[] {14, 14, 12, 6, 4, -2, -8, -10, -12, -16, -16, -12, -6, 0, 6, 10, 14};
    yCorners = new int [] {-6, 0, 6, 10, 12, 12, 10, 8, 2, -2, -8, -12, -10, -10, -12, -10, -6};
    myColor = 100;
    myXspeed = (int)(Math.random()*4 + 1);
    myYspeed = (int)(Math.random()*4 + 1);
    myPointDirection = (int)(Math.random()*359);
    myCenterX = (int)(Math.random()*800 + 100);
    myCenterY = (int)(Math.random()*800 + 100);
    rotSpeed = (Math.random()* 10 -5);
  }
  
  public void move() {
    turn(rotSpeed);
    super.move();
  }
  
  public void setY(int y) {
    myCenterY = y;
  }
  
  public void setDirection(double d) {
    myPointDirection = d;
  }
  
  public double getXposition() { return myCenterX; }
public double getYposition() { return myCenterY; }

}

class Asteroid4 extends Floater {
  protected double rotSpeed;
  public Asteroid4() {
    corners = 22;
    xCorners = new int[] {20,19,13,8,0,-5,-7,-9,-16,-18,-19,-20,-18,-19,-17,-10, -5, 5, 8, 15, 18, 20};
    yCorners = new int[] {0,11,14,17,16,13,13,14,8,8,6,1,-1,-4,-10,-11,-16,-17,-15,-13,-6,0};
    myColor = 100;
    myXspeed = (int)(Math.random()*4 + 1);
    myYspeed = (int)(Math.random()*4 + 1);
    myPointDirection = (int)(Math.random()*359);
    myCenterX = (int)(Math.random()*800 + 100);
    myCenterY = (int)(Math.random()*800 + 100);
    rotSpeed = (Math.random()* 10 -5);
  }
  
  public void move() {
    turn(rotSpeed);
    super.move();
  }
  
  public void setY(int y) {
    myCenterY = y;
  }
  
  public void setDirection(double d) {
    myPointDirection = d;
  }
  
  public double getXposition() { return myCenterX; }
public double getYposition() { return myCenterY; }

}
  
  
  
class AsteroidB extends Floater {
  protected double rotSpeed;
  public AsteroidB () {
    corners = 22;
    xCorners = new int[] {20,19,13,8,0,-5,-7,-9,-16,-18,-19,-20,-18,-19,-17,-10, -5, 5, 8, 15, 18, 20};
    yCorners = new int[] {0,11,14,17,16,13,13,14,8,8,6,1,-1,-4,-10,-11,-16,-17,-15,-13,-6,0};
    myColor = 100;
    myXspeed = (int)(Math.random()*-4 -1);
    myYspeed = (int)(Math.random()*-4 -1);
    myPointDirection = (int)(Math.random()*359);
    myCenterX = (int)(Math.random()*800 + 100);
    myCenterY = (int)(Math.random()*800 + 100);
    rotSpeed = (Math.random()* 10 -5);
  }
  
  public void move() {
    turn(rotSpeed);
    super.move();
  }
  
  public void setY(int y) {
    myCenterY = y;
  }
  
  public void setDirection(double d) {
    myPointDirection = d;
  }
  
  public double getXposition() { return myCenterX; }
public double getYposition() { return myCenterY; }

}
  
  
  
  
