Nematode[] colony;

void setup() {
  size(500, 500);
  background(57, 227, 199);
  colony = new Nematode[60];
  for (int i = 0; i < colony.length; i++)
    colony[i] = new Nematode((int)(Math.random()*100+200), (int)(Math.random()*100+200));
}

void draw() {
  background(57, 227, 199);
  fill(245, 241, 191);
  rect(0, 430, 500, 430);
  fill(252, 237, 28);
  ellipse(250, 300, 200, 300);
  fill(95, 168, 84);
  triangle(250, 80, 230, 180, 270, 180);
  triangle(220, 70, 230, 180, 200, 170);
  triangle(320, 70, 270, 180, 300, 170);
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
  Nematode(int x, int y) {
    myX = x;
    myY = y;
    c = color(123, 145, 100);
    eye = 1;
    xMove = 0;
  }
  void move() {
    if (myX < mouseX)
      xMove = 1;
    else if (myX == mouseX)
      xMove = 0;
    else if (myX > mouseX)
      xMove = -1;
    myX += (int)(Math.random()*4-2+xMove);

    if (myY < mouseY)
      yMove = 1;
    else if (myY == mouseY)
      yMove = 0;
    else if (myY > mouseY)
      yMove = -1;
    myY += (int)(Math.random()*4-2+yMove);
  }
  void show() {
    fill(c);
    ellipse(myX, myY, 10, 30);
    fill(0);
    ellipse(myX-2, myY-3, eye, eye);
    ellipse(myX+2, myY-3, eye, eye);
  }
}
