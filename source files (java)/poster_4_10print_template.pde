int x = 0;
int y = 0;
int space = 40;

color[] colors = {#84a6c2, #2d425f, #f2c165, #b7a65e, #4b562e}; 

void setup() {
  size(1080, 1080);
  background(#fef3e1);
}

void draw() {
  stroke(colors[int(random(colors.length))]);
  strokeWeight(5);
  strokeCap(PROJECT);
  if (random(1) < 0.5) {
    line(x, y, x+space, y+space);
  } else {
    line(x, y+space, x+space, y);
  }
  x = x + space;
  if (x > width) {
    x = 0;
    y = y + space;
  }
}
