
Zombie zombie;
Controller controller;
void setup() {
	size(1024, 800);	
	controller = new Controller();
	

}

void draw() {
	background(255);
	controller.update();
	controller.checkBoarders();
	controller.collision();
}