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

public class krig extends PApplet {


Zombie zombie;
Controller controller;
public void setup() {
		
	controller = new Controller();
	

}

public void draw() {
	background(255);
	controller.update();
	controller.checkBoarders();
	controller.collision();
}
public class Zombie extends Human{
	int g;

	Zombie(float size, float x, float y, int g){
		super(size, x, y);
		this.g = g;

	}

	public void draw(){
		fill(0,g,0);
		ellipse(position.x, position.y, size, size);
	}
}
class Controller {
 int numberOfHumans = 100;
 Human[] humans;
 float size = 30;
 float posX = width/2;
 float posY = height/2;


 Controller (){
 humans = new Human[numberOfHumans];
 creatingHumans();
 }

public void creatingHumans(){

	for(int i = 0; i < humans.length; i++)
		humans[i] = new Human(size, random(0, 1024), random(0, 800));
	humans[0] = new Zombie(30, width/2, height/2, 255);
	
}

public void update(){
	for(int i = 0; i < humans.length; i++){
		humans[i].update();
		humans[i].draw();
	}

}

public void checkBoarders(){
	for(Human human : humans){
	if (human.position.x > width) human.position.x = 0;
	if (human.position.y > height) human.position.y = 0;
	if (human.position.x < 0) human.position.x = width;
	if (human.position.y < 0) human.position.y = height;
	}
}

public boolean checkCollision(float x1, float y1, float size1, float x2, float y2, float size2){
	float maxDistance = (size1 + size2) / 2;

	if(abs(x1 - x2) > maxDistance) return false;
	if(abs(y1 - y2) > maxDistance) return false;
	if(dist(x1, y1, x2, y2) > maxDistance) return false;
	return true;
}

public void collision(){

	for(int i = 0; i < humans.length; i++){
		for (int j = 0 + 1; j < humans.length; j++){
			if(humans[i] instanceof Zombie ^ humans[j] instanceof Zombie){
				boolean hasCollided = checkCollision(
													humans[i].position.x,
													humans[i].position.y,
													humans[i].size,	
					
													humans[j].position.x,
													humans[j].position.y,
													humans[j].size);

			if(hasCollided && humans[i] instanceof Zombie){
				humans[j] = new Zombie(30, humans[j].position.x, humans[j].position.y, 255);
			}
			if(hasCollided && humans[j] instanceof Zombie){
				humans[j] = new Zombie(30, humans[j].position.x, humans[j].position.y, 255);
			}	
			}
		}
	}
}

}
public class Human{
	PVector position;
	PVector velocity; 
	float size;
	public Human (float size, float x, float y) {
		position = new PVector(x,y);

		this.size = size;
		velocity = new PVector();
		velocity.x = random (10) - 5;
		velocity.y = random (10) - 5;
	}

	public void update() {

		position.x += velocity.x;
		position.y += velocity.y;
	}


	public void draw(){
		fill(255, 0, 0);
		ellipse(position.x, position.y, 50,50);

	}
}
  public void settings() { 	size(1024, 800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "krig" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
