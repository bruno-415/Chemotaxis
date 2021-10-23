Nematode[] colony;

void setup() {
  size(500, 500);
  background(57, 227, 199);
  colony = new Nematode[60];
  for (int i = 0; i < colony.length; i++)
    colony[i] = new Nematode((int)(Math.random()*100+400), (int)(Math.random()*100+250));
    
  //pineapple
  background(57, 227, 199);
  fill(247, 224, 49); //pineapple body
  ellipse(250, 300, 200, 300);
  fill(95, 168, 84); //leaves
  triangle(180, 70, 260, 180, 200, 170);
  triangle(320, 70, 240, 180, 300, 170);
  triangle(250, 80, 230, 180, 270, 180);
  fill(84, 144, 196); //left window
  ellipse(200, 280, 50, 50);
  fill(124, 193, 252);
  ellipse(200, 280, 35, 35);
  fill(84, 144, 196); //right window
  ellipse(310, 350, 45, 45);
  fill(124, 193, 252);
  ellipse(310, 350, 30, 30);
  fill(124, 193, 252); //door
  rect(225, 320, 50, 400, 80);
  fill(245, 241, 191); //sand
  rect(0, 400, 500, 430);
}

void draw() {
  for (int i = 0; i < colony.length; i++) {
    colony[i].move();
    colony[i].show();
  }
}

class Nematode
{
  int myX;
  int myY;
  color c;
  int eye;
  int xMove;
  int yMove;
  int follow;
  int lastX;
  int lastY;
  Nematode(int x, int y) {
    myX = x;
    myY = y;
    c = color(123, 145, 100);
    eye = 1;
    xMove = 0;
    follow = 30;
  }
  void move() {
    
    lastX = myX;
    lastY = myY;
    
    if(myX > mouseX-follow && myX < mouseX+follow)
      xMove = 0;
    else if(myX < mouseX+follow && myX > mouseX-follow)
      xMove = 0;
    else if(myX < mouseX)
      xMove = 1;
    else
      xMove = -1;
    myX += (int)(Math.random()*4-2+xMove);

    if(myY > mouseY-follow && myY < mouseY+follow)
      yMove = 0;
    else if(myY < mouseY+follow && myY > mouseY-follow)
      yMove = 0;
    else if(myY < mouseY)
      yMove = 1;
    else
      yMove = -1;
    myY += (int)(Math.random()*4-2+yMove);
  }
  void show() {
    fill(57, 227, 199);
    noStroke();
    ellipse(lastX, lastY, 14, 34);
    
    stroke(1);
    fill(c); //nematode
    ellipse(myX, myY, 10, 30);
    fill(0);
    ellipse(myX-2, myY-3, eye, eye);
    ellipse(myX+2, myY-3, eye, eye);
  }
}
