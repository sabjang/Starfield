Particle [] bob;

void setup(){
  size(400, 400);
  bob = new Particle[200];
  for(int i = 0; i<bob.length; i++){
    if(i<bob.length-3)
      bob[i] = new Particle();
    else
      bob[i] = new OddballParticle();
  }
}

void draw(){
  background(0);
  for(int i = 0; i<bob.length; i++){
    bob[i].show();
    bob[i].move();
  }
}

class Particle{
  int myColor, myWidth, myHeight; 
  double myX, myY, mySpeed, myAngle; 
  Particle(){
    myX = myY = 200;
    myColor = color(255, 245, 0);
    mySpeed = (Math.random()*3);
    myAngle = (Math.random()*2*Math.PI);
    myWidth = 5;
    myHeight = 5;
  }
  void show(){
    fill(myColor);
    ellipse((int)myX, (int)myY, myWidth, myHeight);
  }
  void move(){
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
}

class OddballParticle extends Particle{ //inherits from Particle
  OddballParticle(){
    myX = myY = 200;
    myColor = color(58, 208, 239);
    mySpeed = 0.5;
    myAngle = (Math.random()*2*Math.PI);
    myWidth = 10; 
    myHeight = 10;
  }
}

