Particle [] circle;
void setup()
{
  size(800,800);
    background((int)(Math.random()*255)-1,(int)(Math.random()*255)-1,(int)(Math.random()*255)-1);
  circle = new Particle[4000];
  for(int i = 0; i < circle.length; i++)
    {
     circle[i] = new NormalParticle();
      circle[1] = new OddballParticle();
      circle[2] = new JumboParticle();
      circle[3] = new JumboParticle();

    }
}
void draw()
{

  for(int i = 0; i < circle.length; i++)
  {
    circle[i].move();
    circle[i].show();
  }
}
class NormalParticle implements Particle
{
  double myX, myY,mySpeed, myAngle;
  int myColor;
   NormalParticle()
   {
     myX = 400;
     myY = 400;
     mySpeed = (int)(Math.random()*100);
     myAngle = Math.PI*3*Math.random();
     myColor = 255;
   }
   public void move()
   {
   myX = myX + Math.sin(myAngle*mySpeed);
   myY = myY + Math.cos(myAngle*mySpeed);
   }

   public void show()
{
     
     fill(myColor);
     ellipse((float)myX,(float)myY,10,10);
}
    
}
interface Particle
{
  public void move();
  public void show();

}
class OddballParticle implements Particle
{
  int myColor, myX, myY;
  OddballParticle()
{
    myX = 400;
    myY = 400;
}
  public void move()
{
    myX = myX + (int)(Math.random()*1)-1;
     myY = myY + (int)(Math.random()*1)-1;
}
  
  public void show()
  
{
    
    fill(20,100,0);
    ellipse(myX,myY,10,10);
    fill(0,0,255);
    ellipse(myX+(int)(Math.random()*3)-1,myY,20,20);
    ellipse(myX+(int)(Math.random()*3)-1,myY,20,20);
}

}
class JumboParticle extends NormalParticle
{
  
  JumboParticle()
{
    myColor = color(20,200,150);
    
    myX = 400;
    myY = 400;
    
}

  public void show()
{
    fill(20,100,200);
    ellipse((float)myX,(float)myY,150,150);
}
}

