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

public class parabolicCurves extends PApplet {

//Create our timing variable
int frame = 0;
int numberOfLines = 30;

public void setup()
{
  
}

public void draw()
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
  public void settings() {  size(640, 480); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "parabolicCurves" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
