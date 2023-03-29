float noiseMax = 1;
float phase = 0;
float zoff = 0;

void setup() {
  background(0);
  size(1080, 1080);
  smooth();
}

void draw() {
  float rad = random(-2,2);
  drawCircle(650-rad);
  rad+=8;
}

void drawCircle(float maxRad) {
  translate(width/2, height/2);
  stroke(255,80);
  noFill();
  beginShape();
  for (float a = 0; a < TWO_PI; a += 0.01) {
    float xoff = map(cos(a+phase), -1, 1, 0, noiseMax);
    float yoff = map(sin(a+phase), -1, 1, 0, noiseMax);
    float r = map(noise(xoff, yoff, zoff), 0, 1, 10, maxRad); // 100 - min radius
    float x = r * cos(a);
    float y = r * sin(a);
    vertex(x, y);
  }
  endShape(CLOSE);
  zoff+=0.03;
}
