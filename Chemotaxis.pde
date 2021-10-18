Nematode[] colony;

void setup() {
  size(500,500);
  background(57, 227, 199);
  colony = new Nematode[20];
  for(int i = 0; i < colony.length; i++)
    colony[i] = new Nematode((int)(Math.random()*100+200), (int)(Math.random()*100+200));
}

void draw() {
  for(int i = 0; i < colony.length; i++) {
    colony[i].move();
    colony[i].show();
  }
}

class Nematode
{
  int myX;
  int myY;
  color c;
  Nematode(int x, int y) {
    myX = x;
    myY = y;
    c = color(123, 145, 100);
  }
  void move() {
    myX += (int)(Math.random()*2-1);
    myY += (int)(Math.random()*2-1);
  }
  void show() {
    fill(c);
    ellipse(myX, myY, 8, 20);
  }
}
