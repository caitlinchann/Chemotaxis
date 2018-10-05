Bacteria[] bob;
void setup()
{
  size(600,600);
  bob = new Bacteria[20];
  for(int i =0; i < bob.length; i++)
  {
    bob[i] = new Bacteria();
  }
}
void draw()
{
  background(227,229,232);
  fill(255);
  ellipse(300,300,580,580);
  for(int i =0; i < bob.length; i++)
  {
  bob[i].show();
  bob[i].walk();
  }
}
class Bacteria
{
   int myX, myY, myColor;
   Bacteria()
  {
    myX = (int)(Math.random()*580);
    myY = (int)(Math.random()*580);
    myColor = (int)(Math.random()*256);
  }
  void walk()
  {
    if(mouseX > myX)
      myX = myX + (int)(Math.random()*5)-1;
    else
      myX = myX + (int)(Math.random()*5)-3;
    if(mouseY > myY)
      myY = myY + (int)(Math.random()*5)-1;
    else
      myY = myY + (int)(Math.random()*5)-3;
  }
  void show()
  {
    noStroke();
    fill(myColor,(int)(Math.random()*256),(int)(Math.random()*256));
    ellipse(myX,myY,10,10);
  }
}
