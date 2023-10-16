Die one;
int total = 0;
void setup()
{
  noLoop();
  size(275,275);
}
void draw()
{
  // 231-235-218
  background(231,235,218);
  int total = 0;
  for(int i = 30; i <= 260; i+=60){
    for(int m = 30; m <= 260; m+=60){
      one = new Die(i,m);
      one.roll();
      one.show();
      total = total + one.dots;
    }
  }
  text("DICE total: "+ total, 100,260);
} 
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int dots, myX, myY;
  
  Die(int x, int y) //constructor
  {
    dots = 0;
    myX = x;
    myY = y;
  }
  void roll()
  {
    dots = (int)(Math.random()*6+1);
 
  }
  void show()
  {
    fill(255);
    rect(myX, myY, 30,30);
    fill(0);
    if(dots == 1){
      //fill(102, 255, 102); // 102-255-102
      ellipse(myX + 15, myY + 15, 5,5);
    }
    if(dots == 2){
      ellipse(myX + 7.5, myY + 15, 5,5);
      ellipse(myX +22.5,myY+15,5,5);
    }
    if(dots == 3){
      //fill(102, 255, 102);
      ellipse(myX + 5.75, myY + 5.75, 5,5);
      ellipse(myX +15,myY+15,5,5);
      ellipse(myX+24.25,myY+24.25,5,5);
    }
    if(dots == 4){
      ellipse(myX + 7.5, myY + 10, 5,5);
      ellipse(myX +22.5,myY+10,5,5);
      ellipse(myX + 7.5, myY + 21, 5,5);
      ellipse(myX +22.5,myY+21,5,5);
    }
    if(dots == 5){
      //fill(102, 255, 102);
      ellipse(myX + 15.5, myY + 15.5, 5,5);
      ellipse(myX + 8, myY + 8, 5,5);
      ellipse(myX +23,myY+8,5,5);
      ellipse(myX + 8, myY + 23, 5,5);
      ellipse(myX +23,myY+23,5,5);
    }
    if(dots == 6){
      ellipse(myX + 7, myY + 10, 5,5);
      ellipse(myX +16,myY+10,5,5);
      ellipse(myX + 7, myY + 21, 5,5);
      ellipse(myX +16,myY+21,5,5);
      ellipse(myX +25, myY + 10, 5,5);
      ellipse(myX +25,myY+21,5,5);
    }
  }
}
