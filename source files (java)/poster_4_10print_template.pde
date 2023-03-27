int x = 0;
int y = 0;
int space = 300; // size of the whole pattern (with small number poster will have more details)

color[] colors = {#84a6c2, #2d425f, #f2c165, #b7a65e, #4b562e}; 

void setup() {
  size(2480, 3508); // try at first (800,800)
  background(#fef3e1);
}

void draw() {
  stroke(colors[int(random(colors.length))]);
  strokeWeight(20); //stroke of lines 
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
