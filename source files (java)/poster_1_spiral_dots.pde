float n=2*PI/123, 
  r=750, //radius of spiral 
  f=0;

void setup() {
  size(1080, 1080); // for te full size try size(2480, 1750);
  background(#e4802b);
  strokeWeight(60); //size of dot
}

void draw() {
  color[] colors = new color[3];
  int colorCount = int(random(3));
  colors[0] = color(#0c293b); // dark blue
  colors[1] = color(#e5261e); // red
  colors[2] = color(#f6a83b); // orange
  stroke (colors[colorCount]);
  int x= width/2+round(r*cos(f));
  int y= height/2+round(r*sin(f));
  point (x, y);
  f=f+n;
  r--; //the degree of reduction in the radius of the spiral. The smaller the number, the denser the circles are drawn
}
