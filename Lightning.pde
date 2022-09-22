PImage img;

void setup()
{
  img = loadImage("palp.png");
  size(300,300);
}

//Palp Squish
float sqx = 2;
//Line Draw
int x = 80;
int y = 130;
int x2 = 80;
int y2 = 130;
boolean mayhem = false;

void draw()
{
  background(0,0,0);
  imageMode(CENTER);
  image(img,50,150,width/sqx,height/sqx);
  
  if (mayhem == true){
    lightning();
    lightning();
    lightning();
  }
  fill(255,255,255);
  textSize(50);
  text("DO IT",70,70);
  //System.out.println(mouseX);
  //System.out.println(mouseY);
}

void lightning() {
  //Color & Girth
  stroke(0, 0, ((int)(Math.random()*256)));
  strokeWeight(5);
  
  //Lightning Draw
  while (x <= 300)
  {
   if ((int)(Math.random()*2) >= 1)
     y = y - (int)(Math.random()*10);
   else
     y = y + (int)(Math.random()*10);
   x = x + (int)(Math.random()*10);
   line(x,y,x2,y2);
   x2 = x;
   y2 = y;
  }
  x = 80;
  y = 130;
  x2 = 80;
  y2 = 130;
}

void mousePressed()
{
  sqx = 2.5;
  mayhem = true;
  redraw();
}

void mouseReleased()
{
  sqx = 2;
  mayhem = false;
}
