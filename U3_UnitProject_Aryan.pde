import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

PImage carA;
PImage carB;
float x = 500;
float y = 500;
float a= 270;
float b = 15;
carA car1 = new carA(300, 160, true);
carB car2 = new carB(300, 200, true);
boolean _left, _right, _up, _down, _s, _d, _a, _w;



void setup()
{
  size (1000, 1000);
  carA =loadImage("carA.png");
  carB =loadImage("carB.png");
}

void draw()
{
  background(0);
  carA.resize(40, 20);
  carB.resize(40, 20);
  car1.Update();
  car1.Draw();
  car2.Update();
  car2.Draw();
  fill(20, 20, 80);
  ellipse(x, y, height/2, width/2);
  fill(155, 155, 100);
  rect(a, b, 20, 350);

  if (dist(x, y, car1.getx(), car1.gety()) < 290 )
  {
    car1.setX(300); 
    car1.setY(160);
  }
  if (dist(x, y, car2.getx(), car2.gety()) < 290)
  {
    car2.setX(300);
    car2.setY(200);
  }
  if (dist(a, b, car1.getx(), car1.gety()) < 18)
  {
    car1.setX(300); 
    car1.setY(160);
  }
  if (dist(car1.getx(), car1.gety(), car2.getx(), car2.gety())<1)
  {
    car1.setX(300); 
    car1.setY(160);
    car2.setX(300);
    car2.setY(200);
  }
}

void keyPressed()
{
  if (key=='a')
  {
    _a = true;
  }
  if (key=='d')
  {
    _d = true;
  }
  if (key=='s')
  {
    _s = true;
  }
  if (key=='w')
  {
    _w = true;
  }
  if (keyCode== LEFT)
  {
    _left = true;
  }
  if (keyCode==RIGHT)
  {
    _right = true;
  }
  if (keyCode==DOWN)
  {
    _down = true;
    //rotate(0.1);
  }
  if (keyCode==UP)
  {
    _up = true;
  }
}

void keyReleased()
{
  if (key=='a')
  {
    _a = false;
  }
  if (key=='d')
  {
    _d = false;
  }
  if (key=='s')
  {
    _s = false;
  }
  if (key=='w')
  {
    _w = false;
  }
  if (keyCode== LEFT)
  {
    _left = false;
  }
  if (keyCode==RIGHT)
  {
    _right = false;
  }
  if (keyCode==DOWN)
  {
    _down = false;
    //rotate(0.1);
  }
  if (keyCode==UP)
  {
    _up = false;
  }
}