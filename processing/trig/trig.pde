int frame = 0;
float multiplier = 0.002;
int numberOfPoints = 320;
int distance = 30;

void setup()
{
	size(640, 480);
	strokeWeight(5);
}

void draw()
{
	background(255);

	//Draw animated point
	stroke (123,162,240);
	for (int i = 0; i < width; i+= distance) {
		point(distance + i, 241 + sin((frame + i) * -0.01) * 98);	
	}

stroke (225,114,122);
for (int i = 0; i < width; i+= distance) {
    point(distance + i, 246 + sin((frame + i) * 0.01) * 130);
}
	frame++;
}
