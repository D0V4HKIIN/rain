float g = 12;

class Dropplet {
  float x, y, s;
  Dropplet(float x, float y, float s) {
    this.x = x;
    this.y = y+height;
    this.s = s;
  }

  void update() {
    ellipse(x, y, s / 4, s);
    y += g;
    if (y>height) {
      y = random(height)-height;
      x = random(width);
      s = random(25, 50);
    }
  }
}


Dropplet[] drops;
void setup() {
  size(900, 900);
  drops = new Dropplet[200];
  for (int i = 0; i<drops.length; i++) {
    drops[i] = new Dropplet(random(width), random(height), random(15, 50));
  }
}

void draw() {
  background(0);
  for (int i = 0; i<drops.length; i++) {
    drops[i].update();
  }
}
