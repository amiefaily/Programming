int frame = 0;
float multiplier = 0.002;
int numberOfPoints = 100;
int distance = 30;

void setup()
{
  size(640, 480);
  strokeWeight(5);
}

void draw()
{
  background(324);

  //Draw animated point
  stroke (123,162,240);
  for (int i = 0; i < width; i+= distance) {
    point(distance + i, 280 + sin((frame + i) * -0.02) * 62);  
  }
  frame++;
}
