//your variable declarations here
Spaceship bob = new Spaceship();
Star [] night = new Star[600];
public void setup() 
{
  size(1000,1000);
  for ( int i=0; i < night.length; i ++ ) {
    night[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for ( int i=0; i < night.length; i ++ ) {  
  night[i].show();
  }
  bob.move();
  bob.show();
  
}

public void keyPressed() {
  
  if ( key == 'h' ) {
  bob.setXspeed(0);
 bob.setYspeed(0);
  bob.setXposition((int)(Math.random()*800 + 100));
    bob.setYposition((int)(Math.random()*800 + 100));
    bob.setDirection((int)(Math.random()*360));
 }
 
   if ( key == 'w') {
    bob.accelerate(0.5);
    bob.accelerate(0.5);
  }
  
  if ( key == 's') {
    bob.accelerate(-0.5);
    bob.accelerate(-0.5 );
    
  }
  
  if ( key == 'a') {
    bob.turn(5);
  }
  
  if ( key == 'd') {
   bob.turn(-5);
  }
  
  
}//end key pressed

