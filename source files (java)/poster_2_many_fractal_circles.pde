color[] colors = {#ebdbb2, #282828, #fb4934, #b8bb26, #fabd2f, #83a598, #d3869b, #a89984, #fe8019 };

void setup() {
  size(1080, 1080);
  noLoop();
  //frameRate(3);
  //ellipseMode(RADIUS); // position of circles

}

void draw() {
  background(colors[int(random(colors.length))]);
  drawCircle(width/2, height/2, 540);
}

void drawCircle(float x, float y, float radius) {
  fill(colors[int(random(colors.length))]);
  ellipse(x, y, radius, radius);
  if (radius > 23) { //radius of circles (with small number the pattern has more circles, but it looks kind of noisy
    drawCircle(x + radius/2, y, radius/2);
    drawCircle(x - radius/2, y, radius/2);
    drawCircle(x, y + radius/2, radius/2);
    drawCircle(x, y - radius/2, radius/2);
  }
}
