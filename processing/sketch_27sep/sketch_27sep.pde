PVector position;
float speed = 5;

void setup() {
	size(1024, 1024);
	position = new PVector(width/2, height/2);
	ellipseMode(CENTER);
}

void draw() {


float xMovement = getAxisRaw("Horizontal") * speed;
	
	position.x += xMovement;
	
	ellipse (position.x, position.y, 50, 50);

}
