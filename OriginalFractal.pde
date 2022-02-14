public void setup() {
  size(600, 600);
  background(0);
}
public void draw() {
  myFractal(300, 300, 300);
}
public void mousePressed() {
  fill((int)(Math.random() * 155) + 100, (int)(Math.random() * 155) + 100, (int)(Math.random() * 155) + 100);
}
public void myFractal(float x, float y, float siz) {
  if (siz <= 10) {
      Hexagon(x, y, siz);
  }
  else {
      myFractal(x - siz/2, y - siz/2, siz/2);
      myFractal(x + siz/2, y + siz/2, siz/2);
      myFractal(x + siz/2, y - siz/2, siz/2);
      myFractal(x - siz/2, y + siz/2, siz/2);
      myFractal(x, y, siz/2);
    }
  }
public void Hexagon(float x, float y, float radius) {
    float angle = TWO_PI / 6;
    beginShape();
    for (float i = 0; i < TWO_PI; i += angle) {
      float sx = x + cos(i) * radius;
      float sy = y + sin(i) * radius;
      vertex(sx, sy);
    }
    endShape(CLOSE);
  }
