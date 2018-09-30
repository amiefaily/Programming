//Create our timing variable
int frame = 0;
int numberOfLines = 30;

void setup()
{
  size(640, 480);
}

void draw()
{
    //Clear background
	background(50, 166, 240);
	strokeWeight(1);
	for (int i = 0; i < numberOfLines; i++) {
		line(0, i * height / numberOfLines, i * width / numberOfLines, height);
		if (i % 3 == 0) stroke(random(0,255)); 
			else stroke(0); 
	}
}