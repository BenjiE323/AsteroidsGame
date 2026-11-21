//your variable declarations here
int Score = 5;
Spaceship bob = new Spaceship();
Star [] night = new Star[1200];
ArrayList <Asteroid> jim = new ArrayList <Asteroid>();
ArrayList <AsteroidA> keith = new ArrayList <AsteroidA>();
ArrayList <Asteroid3> ben = new ArrayList <Asteroid3>();
ArrayList <Asteroid4> body = new ArrayList <Asteroid4>();
ArrayList <AsteroidB> robin = new ArrayList <AsteroidB>();
ArrayList <AsteroidGold> goldy = new ArrayList <AsteroidGold>();

public void setup() 
{
  size(1500,800);
  for ( int i=0; i < night.length; i ++ ) {
    night[i] = new Star();
  }
 for ( int a = 0; a < 3; a++ ) {
    jim.add(new Asteroid());
}
 for ( int a = 0; a < 2; a ++ ) {
   goldy.add(new AsteroidGold());
 }
 for ( int i =0; i < 3; i ++ ) {
   keith.add(new AsteroidA());
 }
  for ( int i = 0; i < 5; i ++) {
    ben.add(new Asteroid3());
  }
  for ( int i =0; i < 5; i ++) {
    body.add(new Asteroid4());
  }
  for ( int i =0; i < 5; i ++ ) {
    robin.add(new AsteroidB());
  }
}
public void draw() 
{
  background(0);
  for ( int i=0; i < night.length; i ++ ) {  
  night[i].show();
  }
  
 for ( int i = 0; i < goldy.size(); i ++) {
   goldy.get(i).show();
   goldy.get(i).move();
   
   if (dist((float)bob.getXposition(), (float)bob.getYposition(), (float)goldy.get(i).getXposition(), (float)goldy.get(i).getYposition()) < 30) {
    goldy.remove(i);
    goldy.add(new AsteroidGold());
    i--;
    Score += 30;
  }  
 }
 
for ( int a = 0; a < jim.size(); a ++) {
  jim.get(a).show();
  jim.get(a).move();
  
  if (dist((float)bob.getXposition(), (float)bob.getYposition(), (float)jim.get(a).getXposition(), (float)jim.get(a).getYposition()) < 30) {
    jim.remove(a);
    jim.add(new Asteroid());
    a--;
    Score = Score -3;
  }
}

for ( int i = 0; i < keith.size(); i ++ ) {
  keith.get(i).show();
  keith.get(i).move();
  
  if (dist((float)bob.getXposition(), (float)bob.getYposition(), (float)keith.get(i).getXposition(), (float)keith.get(i).getYposition()) < 30) {
    keith.remove(i);
    keith.add(new AsteroidA());
    i--;
    Score = Score - 3;
  }
  
}
  for ( int i =0; i < ben.size(); i ++) {
 ben.get(i).show();
  ben.get(i).move();
  
   if (dist((float)bob.getXposition(), (float)bob.getYposition(), (float)ben.get(i).getXposition(), (float)ben.get(i).getYposition()) < 30) {
    ben.remove(i);
    ben.add(new Asteroid3());
    i--;
    Score = Score - 3;
  }
  
  }
  for ( int i =0; i < body.size(); i ++) {
 body.get(i).show();
  body.get(i).move();
  
   if (dist((float)bob.getXposition(), (float)bob.getYposition(), (float)body.get(i).getXposition(), (float)body.get(i).getYposition()) < 30) {
    body.remove(i);
    body.add(new Asteroid4());
    i--;
    Score = Score - 3;
  }
  }
  for ( int i = 0; i < robin.size(); i ++) {
    robin.get(i).show();
    robin.get(i).move();
    
     if (dist((float)bob.getXposition(), (float)bob.getYposition(), (float)robin.get(i).getXposition(), (float)robin.get(i).getYposition()) < 30) {
    robin.remove(i);
    robin.add(new AsteroidB());
    i--;
    Score = Score - 3;
  }
  }
    
bob.move();
  bob.show();
  
  fill(255);
  rect(550, 30, 390, 30);
  fill(0);
  textSize(20);
  text("Your Score   = ", 680, 52);
  text(Score, 805, 52);
  
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
    bob.accelerate(2);
    bob.accelerate(2);
  }
  
  if ( key == 's') {
    bob.accelerate(-1);
    bob.accelerate(-1);
    
  }
  
  if ( key == 'a') {
    bob.turn(5);
  }
  
  if ( key == 'd') {
   bob.turn(-5);
  }
  
  
}//end key pressed
