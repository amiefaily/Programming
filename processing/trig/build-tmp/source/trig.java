import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class trig extends PApplet {

int frame = 0;
float multiplier = 0.002f;
int numberOfPoints = 320;
int distance = 30;

public void setup()
{
	
	strokeWeight(5);
}

public void draw()
{
	background(255);

	//Draw animated point
	
	for (int i = 0; i < width; i+= distance) {
		point(distance + i, 240 + sin((frame + i) * 0.04f) * 100);	
	}
	frame++;
}
  public void settings() { 	size(640, 480); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "trig" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
